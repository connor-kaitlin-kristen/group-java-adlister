module.exports = {
  purge: [],
  darkMode: 'media', // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        'delius': ['delius', 'sans-serif'],
        'lemonada': ['lemonada', 'sans-serif'],
        'nunito': ['nunito', 'sans-serif'],
        'merienda':['merienda', 'sans-serif']
      },
      backgroundColor: theme => ({
        ...theme('colors'),
        'darkGreen': '#094809',
        'witchPurple': '#650d7f',
        'darkWitchGreen': '#0aa230',
        'darkWitchPurple': '#280532',
        'codeupGreen': '#49c059',
        'eggshellWhite': '#f5f5f5'
      })
    },
    // rotate: {'135':'135deg', '45':'45deg'},
  },
  variants: {
    extend: {
      backgroundOpacity: ['dark']
    },
  },
  plugins: [],
}
