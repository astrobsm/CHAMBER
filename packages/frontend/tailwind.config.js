/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        // UNTH Brand Colors
        primary: {
          50: '#e8f0f8',
          100: '#c5d9ed',
          200: '#9fc0e0',
          300: '#78a7d3',
          400: '#5b93c9',
          500: '#3e80bf',
          600: '#3673a8',
          700: '#2c6290',
          800: '#1e3a5f', // Main UNTH Blue
          900: '#142840',
        },
        secondary: {
          50: '#e6f7ed',
          100: '#c2ebd3',
          200: '#9adeb7',
          300: '#6fd09a',
          400: '#4dc584',
          500: '#2ab96e',
          600: '#23a760',
          700: '#1a9250',
          800: '#127c40',
          900: '#065c2a',
        },
        accent: {
          50: '#fff8e6',
          100: '#ffedc2',
          200: '#ffe099',
          300: '#ffd470',
          400: '#ffca52',
          500: '#ffc034',
          600: '#e6a62f',
          700: '#cc8a28',
          800: '#b36e21',
          900: '#8c4d15',
        },
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', '-apple-system', 'sans-serif'],
        heading: ['Poppins', 'Inter', 'sans-serif'],
      },
      animation: {
        'fade-in': 'fadeIn 0.3s ease-in-out',
        'slide-up': 'slideUp 0.3s ease-out',
        'slide-down': 'slideDown 0.3s ease-out',
        'pulse-slow': 'pulse 3s cubic-bezier(0.4, 0, 0.6, 1) infinite',
      },
      keyframes: {
        fadeIn: {
          '0%': { opacity: '0' },
          '100%': { opacity: '1' },
        },
        slideUp: {
          '0%': { transform: 'translateY(10px)', opacity: '0' },
          '100%': { transform: 'translateY(0)', opacity: '1' },
        },
        slideDown: {
          '0%': { transform: 'translateY(-10px)', opacity: '0' },
          '100%': { transform: 'translateY(0)', opacity: '1' },
        },
      },
    },
  },
  plugins: [],
}
