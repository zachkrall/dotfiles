// Hyper Configuration
// https://hyper.is#cfg

module.exports = {
  config: {
    updateChannel: 'stable',

    // Text Styling
    fontSize: 13.5,
    fontFamily: '"DejaVu Sans Mono for Powerline", monospace',
    foregroundColor: '#abb2bf',

    // Cursor Options
    cursorColor: 'rgba(255,255,255,0.8)',
    cursorShape: 'BEAM', // BEAM, UNDERLINE, or BLOCK
    cursorBlink: true,

    // Window Options
    backgroundColor: '#282c34',
    borderColor: '#343943',
    padding: '0px 14px 12px 14px',

    // Custom CSS
    css: `
    .tabs_nav .tabs_list .tab_text {
      color: #abb2bf;
      border-color:#abb2bf;
    }
    .tabs_nav .tabs_title {
      color: #abb2bf;
    }
    footer.footer_footer,
    footer.footer_footer *{
      opacity:1.0;
    }
    `,
    termCSS: '',

    // Ignored on macOS
    showHamburgerMenu: '',
    showWindowControls: '',

    // Color Palette
    colors: {
      black: '#4f5868',
      red: '#e26b73',
      green: '#96c475',
      yellow: '#56ac7b',
      blue: '#5daef2',
      magenta: '#c775e0',
      cyan: '#51b6c3',
      white: '#abb2bf',
      lightBlack: '#4f5868',
      lightRed: '#e26b73',
      lightGreen: '#96c475',
      lightYellow: '#519a64',
      lightBlue: '#5daef2',
      lightMagenta: '#c775e0',
      lightCyan: '#51b6c3',
      lightWhite: '#abb2bf'
    },

    // Shell Behavior
    shell: '',
    shellArgs: ['--login'],
    env: {},

    bell: 'SOUND', // SOUND or false
    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    copyOnSelect: false

  },

  plugins: [ 'hyper-statusline','hyper-quit','hyperterm-clicky','hyperterm-copy'],

  localPlugins: [],

  keymaps: { }
};
