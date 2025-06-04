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
    'text-[#F26522]',
    'bg-[#f26322]',
    'text-[#004785]',
    'bg-[#004785]',
    'text-[#f26322]',
    'bg-[#d9d9d9]'
  ],
  theme: {
    extend: {
      screens: {
        'xs': '400px', // custom breakpoint at 400px
      },
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

        'pop-in': {
          '0%': { transform: 'scale(0.5)', opacity: '0' },
          '80%': { transform: 'scale(1.05)', opacity: '1' },
          '100%': { transform: 'scale(1)' },
        },
        'fade-in-scale': {
          '0%': { transform: 'scale(0.9)', opacity: '0' },
          '100%': { transform: 'scale(1)', opacity: '1' },
        },
        'tilt-shake': {
          '0%, 100%': { transform: 'rotate(0deg)' },
          '25%': { transform: 'rotate(3deg)' },
          '75%': { transform: 'rotate(-3deg)' },
        },
        shimmer: {
          '100%': { transform: 'translateX(100%)' },
        },
        typewriter: {
          '0%': { width: '0' },
          '100%': { width: '100%' },
        },
        'reveal-line': {
          '0%': { width: '0' },
          '100%': { width: '100%' },
        },
        ripple: {
          '0%': { transform: 'scale(0)', opacity: '0.7' },
          '100%': { transform: 'scale(4)', opacity: '0' },
        },
        blinker: {
          '0%, 100%': { opacity: '1' },
          '50%': { opacity: '0' },
        },
        'drop-in': {
          '0%': { transform: 'translateY(-100px)', opacity: '0' },
          '100%': { transform: 'translateY(0)', opacity: '1' },
        },
        'spin-in': {
          '0%': { transform: 'rotate(-360deg)', opacity: '0' },
          '100%': { transform: 'rotate(0deg)', opacity: '1' },
        },
        'text-reveal': {
          '0%': { transform: 'translateX(-100%)' },
          '100%': { transform: 'translateX(0)' },
        },

        float: {
          '0%, 100%': { transform: 'translateY(0)' },
          '50%': { transform: 'translateY(-10px)' },
        },
        wiggle: {
          '0%, 100%': { transform: 'rotate(-3deg)' },
          '50%': { transform: 'rotate(3deg)' },
        },
        heartbeat: {
          '0%, 100%': { transform: 'scale(1)' },
          '14%': { transform: 'scale(1.3)' },
          '28%': { transform: 'scale(1)' },
          '42%': { transform: 'scale(1.3)' },
          '70%': { transform: 'scale(1)' },
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
        'marqueeR': 'marqueeRight 60s linear infinite',

        'tilt-shake': 'tilt-shake 0.5s ease-in-out infinite',
        typewriter: 'typewriter 2s steps(40) 1 forwards',
        'reveal-line': 'reveal-line 0.5s ease-out forwards',
        ripple: 'ripple 0.6s linear',
        blinker: 'blinker 1s infinite',
        'drop-in': 'drop-in 0.6s ease-out forwards',
        'spin-in': 'spin-in 0.6s ease-out forwards',
        
        float: 'float 3s ease-in-out infinite',
        'pop-in': 'pop-in 0.4s ease-out forwards',
        shimmer: 'shimmer 1.5s infinite linear',
        wiggle: 'wiggle 0.5s ease-in-out infinite',
        heartbeat: 'heartbeat 1.5s ease-in-out infinite',
        'fade-in-scale': 'fade-in-scale 0.5s ease-out forwards',
        'spin-slow': 'spin 3s linear infinite',
        'spin-fast': 'spin 0.8s linear infinite',
        'text-reveal': 'text-reveal 1s ease-out forwards',

      },
    },
  },
  plugins: [require('@tailwindcss/typography')],
}

