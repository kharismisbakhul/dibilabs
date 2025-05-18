/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/app/**/*.{js,ts,jsx,tsx}","./src/components/**/*.{js,ts,jsx,tsx}",],
  safelist: [
    'bg-[#F37021]',
    'bg-[#1A1A1A]',
    'bg-[#0055A4]',
    'bg-blue-800',
    'bg-black',
    'bg-orange-500',
    'bg-[#F26522]',
    'bg-[#0057A0]',
    'bg-white',
  ],
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
          '50%': { transform: 'scale(1.10)' },
        },
        'zoom-pulse-big': {
          '0%, 100%': { transform: 'scale(1)' },
          '50%': { transform: 'scale(1.20)' },
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
        'pulse-fast': 'zoom-pulse-big 3s ease-in-out infinite',
        'bounce-smooth': 'bounce-smooth 2s ease-in-out infinite',
        'marqueeLeft': 'marqueeLeft 30s linear infinite',
        'marqueeRight': 'marqueeRight 30s linear infinite',
        'marquee': 'marqueeLeft 60s linear infinite',
      },
    },
  },
  plugins: [],
}

