import { createContext, useContext, useEffect, useState, useCallback, ReactNode } from 'react';
import { io, Socket } from 'socket.io-client';
import toast from 'react-hot-toast';
import { useAuth } from './AuthContext';

interface WebSocketContextType {
  socket: Socket | null;
  isConnected: boolean;
  emit: (event: string, data: any) => void;
  on: (event: string, callback: (data: any) => void) => void;
  off: (event: string, callback?: (data: any) => void) => void;
  joinRoom: (room: string) => void;
  leaveRoom: (room: string) => void;
}

const WebSocketContext = createContext<WebSocketContextType | null>(null);

export function WebSocketProvider({ children }: { children: ReactNode }) {
  const [socket, setSocket] = useState<Socket | null>(null);
  const [isConnected, setIsConnected] = useState(false);
  const { user, isAuthenticated } = useAuth();

  useEffect(() => {
    if (!isAuthenticated || !user) {
      if (socket) {
        socket.disconnect();
        setSocket(null);
        setIsConnected(false);
      }
      return;
    }

    // Disable WebSocket in production (Vercel doesn't support WebSockets)
    // Only enable in development (localhost)
    if (typeof window !== 'undefined' && window.location.hostname !== 'localhost') {
      console.log('WebSocket disabled in production (Vercel serverless)');
      return;
    }

    // Use secure WebSocket in production, localhost in development
    const getWsUrl = () => {
      if (import.meta.env.VITE_WS_URL) {
        return import.meta.env.VITE_WS_URL;
      }
      return 'ws://localhost:3001';
    };
    const wsUrl = getWsUrl();
    const token = localStorage.getItem('accessToken');

    const newSocket = io(wsUrl, {
      auth: { token },
      transports: ['websocket', 'polling'],
      reconnection: true,
      reconnectionAttempts: 5,
      reconnectionDelay: 1000,
      reconnectionDelayMax: 5000,
    });

    newSocket.on('connect', () => {
      console.log('WebSocket connected');
      setIsConnected(true);

      // Join user-specific room
      newSocket.emit('join', {
        room: `user:${user.id}`,
        role: user.role,
      });

      // Join role-based room
      newSocket.emit('join', {
        room: `role:${user.role}`,
      });
    });

    newSocket.on('disconnect', (reason) => {
      console.log('WebSocket disconnected:', reason);
      setIsConnected(false);

      if (reason === 'io server disconnect') {
        // Server disconnected, try to reconnect
        newSocket.connect();
      }
    });

    newSocket.on('connect_error', (error) => {
      // Only log as warning - auth errors are expected when token is invalid
      if (error.message !== 'Authentication required') {
        console.warn('WebSocket connection error:', error.message);
      }
      setIsConnected(false);
    });

    // Handle real-time events
    newSocket.on('notification', (data) => {
      toast(data.message, {
        icon: data.type === 'success' ? '✅' : data.type === 'warning' ? '⚠️' : 'ℹ️',
        duration: 5000,
      });
    });

    newSocket.on('attendance:marked', (data) => {
      toast.success(`Attendance marked: ${data.status}`);
    });

    newSocket.on('test:started', (data) => {
      toast(`Test "${data.testName}" has started!`, {
        icon: '📝',
        duration: 10000,
      });
    });

    newSocket.on('test:completed', (data) => {
      toast.success(`Test completed! Score: ${data.score}%`);
    });

    newSocket.on('rotation:updated', (data) => {
      toast(`Rotation "${data.rotationName}" has been updated`, {
        icon: '🔄',
      });
    });

    newSocket.on('clearance:status', (data) => {
      if (data.status === 'cleared') {
        toast.success('Congratulations! You have been cleared for sign-out!');
      } else {
        toast(`Clearance status: ${data.message}`, {
          icon: data.status === 'at_risk' ? '⚠️' : 'ℹ️',
        });
      }
    });

    newSocket.on('session:updated', (data) => {
      console.log('Session updated:', data);
    });

    setSocket(newSocket);

    return () => {
      newSocket.disconnect();
    };
  }, [isAuthenticated, user]);

  const emit = useCallback((event: string, data: any) => {
    if (socket && isConnected) {
      socket.emit(event, data);
    }
  }, [socket, isConnected]);

  const on = useCallback((event: string, callback: (data: any) => void) => {
    if (socket) {
      socket.on(event, callback);
    }
  }, [socket]);

  const off = useCallback((event: string, callback?: (data: any) => void) => {
    if (socket) {
      socket.off(event, callback);
    }
  }, [socket]);

  const joinRoom = useCallback((room: string) => {
    if (socket && isConnected) {
      socket.emit('join', { room });
    }
  }, [socket, isConnected]);

  const leaveRoom = useCallback((room: string) => {
    if (socket && isConnected) {
      socket.emit('leave', { room });
    }
  }, [socket, isConnected]);

  const value: WebSocketContextType = {
    socket,
    isConnected,
    emit,
    on,
    off,
    joinRoom,
    leaveRoom,
  };

  return (
    <WebSocketContext.Provider value={value}>
      {children}
    </WebSocketContext.Provider>
  );
}

export function useWebSocket(): WebSocketContextType {
  const context = useContext(WebSocketContext);
  if (!context) {
    throw new Error('useWebSocket must be used within a WebSocketProvider');
  }
  return context;
}

// Custom hooks for specific real-time features
export function useRealtimeNotifications(callback: (data: any) => void) {
  const { on, off } = useWebSocket();

  useEffect(() => {
    on('notification', callback);
    return () => off('notification', callback);
  }, [on, off, callback]);
}

export function useRealtimeAttendance(rotationId: string, callback: (data: any) => void) {
  const { on, off, joinRoom, leaveRoom } = useWebSocket();

  useEffect(() => {
    const room = `rotation:${rotationId}:attendance`;
    joinRoom(room);
    on('attendance:update', callback);

    return () => {
      leaveRoom(room);
      off('attendance:update', callback);
    };
  }, [rotationId, on, off, joinRoom, leaveRoom, callback]);
}

export function useRealtimeTestSession(testId: string, callbacks: {
  onTimeUpdate?: (remainingTime: number) => void;
  onQuestionUpdate?: (data: any) => void;
  onTestEnd?: () => void;
}) {
  const { on, off, joinRoom, leaveRoom } = useWebSocket();

  useEffect(() => {
    const room = `test:${testId}`;
    joinRoom(room);

    if (callbacks.onTimeUpdate) on('test:time', callbacks.onTimeUpdate);
    if (callbacks.onQuestionUpdate) on('test:question', callbacks.onQuestionUpdate);
    if (callbacks.onTestEnd) on('test:end', callbacks.onTestEnd);

    return () => {
      leaveRoom(room);
      if (callbacks.onTimeUpdate) off('test:time', callbacks.onTimeUpdate);
      if (callbacks.onQuestionUpdate) off('test:question', callbacks.onQuestionUpdate);
      if (callbacks.onTestEnd) off('test:end', callbacks.onTestEnd);
    };
  }, [testId, on, off, joinRoom, leaveRoom, callbacks]);
}

export function useRealtimeLeaderboard(rotationId: string, callback: (data: any) => void) {
  const { on, off, joinRoom, leaveRoom } = useWebSocket();

  useEffect(() => {
    const room = `rotation:${rotationId}:leaderboard`;
    joinRoom(room);
    on('leaderboard:update', callback);

    return () => {
      leaveRoom(room);
      off('leaderboard:update', callback);
    };
  }, [rotationId, on, off, joinRoom, leaveRoom, callback]);
}
