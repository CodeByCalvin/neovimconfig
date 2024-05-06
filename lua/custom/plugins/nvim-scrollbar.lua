return {
  {
    'petertriho/nvim-scrollbar',
    config = function()
      require('scrollbar').setup {
        handle = {
          blend = 30,
          color = '#000000',
        },
        handlers = {
          gitsigns = true,
        },
      }
    end,
    opts = {},
  },
}
