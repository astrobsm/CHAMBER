export function LoadingScreen() {
  return (
    <div className="min-h-screen flex flex-col items-center justify-center bg-gradient-to-br from-primary-800 to-primary-600">
      <div className="text-center">
        {/* Logo */}
        <div className="mb-6">
          <img 
            src="/logo.png" 
            alt="UNTH Logo" 
            className="w-20 h-20 mx-auto object-contain shadow-lg"
          />
        </div>

        {/* App name */}
        <h1 className="text-white text-xl font-semibold mb-2">
          Clinical Rotation Platform
        </h1>
        <p className="text-primary-200 text-sm mb-8">
          UNTH, Ituku-Ozalla
        </p>

        {/* Loading spinner */}
        <div className="flex justify-center">
          <div className="w-8 h-8 border-3 border-white/30 border-t-white rounded-full animate-spin"></div>
        </div>
        
        <p className="text-white/70 text-sm mt-4">Loading...</p>
      </div>
    </div>
  );
}

export default LoadingScreen;
