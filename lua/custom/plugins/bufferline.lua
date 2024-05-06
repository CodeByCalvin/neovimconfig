return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',

  config = function()
    require('bufferline').setup {

      options = {
        separator_style = 'slanted',
        hover = {
          enabled = true,
          delay = 50,
          reveal = { 'close', 'open' },
        },
      },
    }
  end,
}
