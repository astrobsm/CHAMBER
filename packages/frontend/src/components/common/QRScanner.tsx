import { useEffect, useRef, useState, useCallback } from 'react';
import {
  CameraIcon,
  XMarkIcon,
  CheckCircleIcon,
  ExclamationTriangleIcon,
  ArrowPathIcon,
} from '@heroicons/react/24/outline';

interface QRScannerProps {
  onScan: (data: string) => void;
  onClose: () => void;
  isProcessing?: boolean;
}

export default function QRScanner({ onScan, onClose, isProcessing = false }: QRScannerProps) {
  const videoRef = useRef<HTMLVideoElement>(null);
  const canvasRef = useRef<HTMLCanvasElement>(null);
  const [error, setError] = useState<string | null>(null);
  const [hasCamera, setHasCamera] = useState(true);
  const [scanning, setScanning] = useState(true);
  const [facingMode, setFacingMode] = useState<'environment' | 'user'>('environment');
  const streamRef = useRef<MediaStream | null>(null);

  const stopCamera = useCallback(() => {
    if (streamRef.current) {
      streamRef.current.getTracks().forEach(track => track.stop());
      streamRef.current = null;
    }
  }, []);

  const startCamera = useCallback(async () => {
    try {
      stopCamera();
      setError(null);

      const constraints: MediaStreamConstraints = {
        video: {
          facingMode: facingMode,
          width: { ideal: 1280 },
          height: { ideal: 720 },
        },
      };

      const stream = await navigator.mediaDevices.getUserMedia(constraints);
      streamRef.current = stream;

      if (videoRef.current) {
        videoRef.current.srcObject = stream;
        await videoRef.current.play();
      }

      setHasCamera(true);
    } catch (err) {
      console.error('Camera error:', err);
      setHasCamera(false);
      setError('Unable to access camera. Please grant camera permissions.');
    }
  }, [facingMode, stopCamera]);

  useEffect(() => {
    startCamera();
    return () => stopCamera();
  }, [startCamera, stopCamera]);

  // QR code detection loop
  useEffect(() => {
    if (!scanning || !videoRef.current || !canvasRef.current) return;

    const video = videoRef.current;
    const canvas = canvasRef.current;
    const ctx = canvas.getContext('2d');
    if (!ctx) return;

    let animationId: number;
    let lastScanTime = 0;
    const SCAN_INTERVAL = 200; // ms between scans

    const scanFrame = async (timestamp: number) => {
      if (!scanning) return;

      if (timestamp - lastScanTime >= SCAN_INTERVAL) {
        lastScanTime = timestamp;

        if (video.readyState === video.HAVE_ENOUGH_DATA) {
          canvas.width = video.videoWidth;
          canvas.height = video.videoHeight;
          ctx.drawImage(video, 0, 0, canvas.width, canvas.height);

          const imageData = ctx.getImageData(0, 0, canvas.width, canvas.height);

          // Using BarcodeDetector API if available
          if ('BarcodeDetector' in window) {
            try {
              const detector = new (window as any).BarcodeDetector({ formats: ['qr_code'] });
              const barcodes = await detector.detect(imageData);
              if (barcodes.length > 0) {
                setScanning(false);
                onScan(barcodes[0].rawValue);
                return;
              }
            } catch (e) {
              // BarcodeDetector not supported or error
              console.log('BarcodeDetector error:', e);
            }
          }
        }
      }

      animationId = requestAnimationFrame(scanFrame);
    };

    animationId = requestAnimationFrame(scanFrame);
    return () => cancelAnimationFrame(animationId);
  }, [scanning, onScan]);

  const toggleCamera = () => {
    setFacingMode(prev => prev === 'environment' ? 'user' : 'environment');
  };

  const retryScanning = () => {
    setScanning(true);
    setError(null);
  };

  return (
    <div className="fixed inset-0 bg-black z-50 flex flex-col">
      {/* Header */}
      <div className="absolute top-0 left-0 right-0 z-10 bg-gradient-to-b from-black/80 to-transparent p-4">
        <div className="flex items-center justify-between">
          <div>
            <h2 className="text-white text-lg font-semibold">Scan QR Code</h2>
            <p className="text-white/70 text-sm">Point your camera at the attendance QR code</p>
          </div>
          <button
            onClick={() => {
              stopCamera();
              onClose();
            }}
            className="p-2 bg-white/20 rounded-full hover:bg-white/30 transition-colors"
          >
            <XMarkIcon className="w-6 h-6 text-white" />
          </button>
        </div>
      </div>

      {/* Camera View */}
      <div className="flex-1 relative overflow-hidden">
        {hasCamera ? (
          <>
            <video
              ref={videoRef}
              className="absolute inset-0 w-full h-full object-cover"
              playsInline
              muted
            />
            <canvas ref={canvasRef} className="hidden" />

            {/* Scanning Frame Overlay */}
            <div className="absolute inset-0 flex items-center justify-center">
              <div className="relative">
                {/* Scanning frame */}
                <div className={`w-64 h-64 border-2 rounded-2xl ${scanning ? 'border-white' : 'border-green-500'}`}>
                  {/* Corner markers */}
                  <div className="absolute -top-1 -left-1 w-8 h-8 border-t-4 border-l-4 border-white rounded-tl-lg" />
                  <div className="absolute -top-1 -right-1 w-8 h-8 border-t-4 border-r-4 border-white rounded-tr-lg" />
                  <div className="absolute -bottom-1 -left-1 w-8 h-8 border-b-4 border-l-4 border-white rounded-bl-lg" />
                  <div className="absolute -bottom-1 -right-1 w-8 h-8 border-b-4 border-r-4 border-white rounded-br-lg" />

                  {/* Scanning animation */}
                  {scanning && !isProcessing && (
                    <div className="absolute inset-4 overflow-hidden rounded-lg">
                      <div className="h-0.5 bg-primary-500 animate-pulse shadow-lg shadow-primary-500/50" style={{
                        animation: 'scan 2s linear infinite',
                      }} />
                    </div>
                  )}
                </div>

                {/* Status indicator */}
                {isProcessing && (
                  <div className="absolute inset-0 flex items-center justify-center bg-black/50 rounded-2xl">
                    <div className="text-center">
                      <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-white mx-auto mb-3" />
                      <p className="text-white font-medium">Processing...</p>
                    </div>
                  </div>
                )}
              </div>
            </div>

            {/* Overlay for darkening edges */}
            <div className="absolute inset-0 pointer-events-none">
              <div className="absolute inset-0 bg-black/50" style={{
                maskImage: 'radial-gradient(circle at center, transparent 128px, black 128px)',
                WebkitMaskImage: 'radial-gradient(circle at center, transparent 128px, black 128px)',
              }} />
            </div>
          </>
        ) : (
          <div className="flex-1 flex items-center justify-center bg-gray-900">
            <div className="text-center p-8">
              <CameraIcon className="w-20 h-20 text-gray-600 mx-auto mb-4" />
              <h3 className="text-white text-lg font-semibold mb-2">Camera Access Required</h3>
              <p className="text-gray-400 mb-6">{error}</p>
              <button onClick={startCamera} className="btn btn-primary">
                <ArrowPathIcon className="w-5 h-5 mr-2" />
                Try Again
              </button>
            </div>
          </div>
        )}
      </div>

      {/* Footer Controls */}
      <div className="absolute bottom-0 left-0 right-0 z-10 bg-gradient-to-t from-black/80 to-transparent p-6">
        <div className="flex items-center justify-center gap-8">
          {/* Switch Camera */}
          <button
            onClick={toggleCamera}
            className="p-4 bg-white/20 rounded-full hover:bg-white/30 transition-colors"
          >
            <ArrowPathIcon className="w-6 h-6 text-white" />
          </button>

          {/* Status */}
          <div className="flex items-center gap-2 bg-white/10 px-4 py-2 rounded-full">
            {scanning ? (
              <>
                <div className="w-2 h-2 bg-green-500 rounded-full animate-pulse" />
                <span className="text-white text-sm">Scanning...</span>
              </>
            ) : (
              <>
                <CheckCircleIcon className="w-5 h-5 text-green-500" />
                <span className="text-white text-sm">Code Detected</span>
              </>
            )}
          </div>

          {/* Retry */}
          {!scanning && (
            <button
              onClick={retryScanning}
              className="p-4 bg-white/20 rounded-full hover:bg-white/30 transition-colors"
            >
              <ArrowPathIcon className="w-6 h-6 text-white" />
            </button>
          )}
        </div>

        {/* Tips */}
        <div className="mt-4 text-center">
          <p className="text-white/60 text-xs">
            Hold steady and ensure the QR code is within the frame
          </p>
        </div>
      </div>

      <style>{`
        @keyframes scan {
          0%, 100% { transform: translateY(0); }
          50% { transform: translateY(240px); }
        }
      `}</style>
    </div>
  );
}

// Hook for using QR scanner
export function useQRScanner() {
  const [isOpen, setIsOpen] = useState(false);
  const [scannedData, setScannedData] = useState<string | null>(null);

  const openScanner = () => {
    setScannedData(null);
    setIsOpen(true);
  };

  const closeScanner = () => {
    setIsOpen(false);
  };

  const handleScan = (data: string) => {
    setScannedData(data);
  };

  return {
    isOpen,
    scannedData,
    openScanner,
    closeScanner,
    handleScan,
    QRScannerComponent: isOpen ? (
      <QRScanner onScan={handleScan} onClose={closeScanner} />
    ) : null,
  };
}
