import { useState, useEffect } from 'react';

/**
 * Common breakpoint queries following Tailwind CSS defaults
 */
export const breakpoints = {
  sm: '(min-width: 640px)',
  md: '(min-width: 768px)',
  lg: '(min-width: 1024px)',
  xl: '(min-width: 1280px)',
  '2xl': '(min-width: 1536px)',
} as const;

/**
 * Hook to track media query matches
 * @param query - Media query string (e.g., '(min-width: 768px)')
 */
export function useMediaQuery(query: string): boolean {
  const [matches, setMatches] = useState<boolean>(() => {
    if (typeof window === 'undefined') return false;
    return window.matchMedia(query).matches;
  });

  useEffect(() => {
    if (typeof window === 'undefined') return;

    const mediaQueryList = window.matchMedia(query);
    const listener = (event: MediaQueryListEvent) => setMatches(event.matches);

    // Modern browsers
    if (mediaQueryList.addEventListener) {
      mediaQueryList.addEventListener('change', listener);
      return () => mediaQueryList.removeEventListener('change', listener);
    }
    // Legacy support for older browsers
    if ('addListener' in mediaQueryList) {
      (mediaQueryList as MediaQueryList & { addListener: (listener: (e: MediaQueryListEvent) => void) => void }).addListener(listener);
      return () => (mediaQueryList as MediaQueryList & { removeListener: (listener: (e: MediaQueryListEvent) => void) => void }).removeListener(listener);
    }
    return () => {};
  }, [query]);

  return matches;
}

/**
 * Convenience hook for common breakpoints
 */
export function useBreakpoint() {
  const isSm = useMediaQuery(breakpoints.sm);
  const isMd = useMediaQuery(breakpoints.md);
  const isLg = useMediaQuery(breakpoints.lg);
  const isXl = useMediaQuery(breakpoints.xl);
  const is2Xl = useMediaQuery(breakpoints['2xl']);

  return {
    isMobile: !isSm, // Below 640px
    isTablet: isSm && !isLg, // 640px - 1023px
    isDesktop: isLg, // 1024px and above
    isSm,
    isMd,
    isLg,
    isXl,
    is2Xl,
  };
}

/**
 * Hook to detect preferred color scheme
 */
export function usePrefersDarkMode(): boolean {
  return useMediaQuery('(prefers-color-scheme: dark)');
}

/**
 * Hook to detect reduced motion preference
 */
export function usePrefersReducedMotion(): boolean {
  return useMediaQuery('(prefers-reduced-motion: reduce)');
}

export default useMediaQuery;
