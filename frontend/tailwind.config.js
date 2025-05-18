/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/app/**/*.{js,ts,jsx,tsx}","./src/components/**/*.{js,ts,jsx,tsx}",],
  theme: {
    extend: {
      keyframes: {
        'scroll-ltr': {
          '0%': { transform: 'translateX(0)' },
          '100%': { transform: 'translateX(100%)' },
        },
        'scroll-rtl': {
          '0%': { transform: 'translateX(0)' },
          '100%': { transform: 'translateX(-50%)' },
        },
        'zoom-pulse': {
          '0%, 100%': { transform: 'scale(1)' },
          '50%': { transform: 'scale(1.05)' },
        },
        'bounce-smooth': {
          '0%, 100%': { transform: 'translateY(0)' },
          '50%': { transform: 'translateY(-10px)' },
        },
        'marqueeLeft': {
          '0%': { transform: 'translateX(0%)' },
          '100%': { transform: 'translateX(-50%)' },
        },
        'marqueeRight': {
          '0%': { transform: 'translateX(-50%)' },
          '100%': { transform: 'translateX(0%)' },
        },
      },
      animation: {
        'scroll-ltr': 'scroll-ltr 30s linear infinite',
        'scroll-rtl': 'scroll-rtl 30s linear infinite',
        'pulse-slow': 'zoom-pulse 3s ease-in-out infinite',
        'bounce-smooth': 'bounce-smooth 2s ease-in-out infinite',
        'marqueeLeft': 'marqueeLeft 30s linear infinite',
        'marqueeRight': 'marqueeRight 30s linear infinite',
        'marquee': 'marqueeLeft 40s linear infinite',
      },
    },
  },
  plugins: [],
}

