module.exports = {
  content: [
    './app/views/**/*.{html,erb}',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.{js,jsx,ts,tsx}',
  ],
  theme: {
    extend: {
      fontFamily: {
        cute: ['Pacifico', 'cursive'],
        chiron: ['"Chiron GoRound TC"', 'sans-serif'],
        hachi:  ['"Hachi Maru Pop"', 'cursive'],
        kaisei: ['"Kaisei Decol"', 'serif'],
        uoqmun: ['"UoqMunThenKhung"', 'sans-serif'],
        yomogi: ['"Yomogi"', 'cursive'],
      },
    },
  },
  plugins: [],
}
