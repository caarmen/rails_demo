const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  daisyui: {
    themes: [
      {
        light: {
          ...require("daisyui/src/theming/themes")["light"],
          "primary": "#1e40af",
          "secondary": "#2563eb",
          "accent": "#00ffff",
          "neutral": "#d1d5db",
          "base-100": "#ffffff",
          "info": "#60a5fa",
          "success": "#00ff00",
          "warning": "#f97316",
          "error": "#ff0000",
        },
        dark: {
          ...require("daisyui/src/theming/themes")["dark"],
          "primary": "#93c5fd",
          "secondary": "#60a5fa",
          "accent": "#00cccc",
          "neutral": "#374151",
          "base-100": "#1f2937",
          "info": "#3b82f6",
          "success": "#10b981",
          "warning": "#f59e0b",
          "error": "#ef4444",
        },
      },
    ],
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require('daisyui'),
  ]
}
