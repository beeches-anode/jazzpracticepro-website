/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./index.html",
    "./help/**/*.html",
    "./blog/**/*.html",
    "./privacy.html"
  ],
  theme: {
    extend: {
      colors: {
        'brand-primary': '#7c3aed',
        'brand-secondary': '#8b5cf6',
      },
    },
  },
  plugins: [],
}
