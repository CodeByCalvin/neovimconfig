return {
  'loctvl842/monokai-pro.nvim',
  config = function()
    require('monokai-pro').setup {
      filter = 'pro',
      devicons = true,
      transparent_background = true,
      terminal_colors = true,
      styles = {
        comments = 'italic',
        keywords = 'italic',
        functions = 'none',
      },
      background_clear = {
        'toggleterm',
        'telescope',
        'bufferline',
        'nvim-tree',
        'lsp_finder',
      },

      override = function(c)
        return {
          Normal = { bg = '#1e1d21' },
          VertSplit = { bg = '#1e1d21', fg = '#1e1d21' },
          TabLine = { bg = '#1e1d21', fg = '#505050' },
          TabLineSel = { bg = '#1b1a1e', fg = '#ffffff' },
          TabLineFill = { bg = '#1e1d21' },
          Sidebar = { bg = '#141316', fg = c.foreground },
        }
      end,
    }
    vim.cmd 'colorscheme monokai-pro'
  end,
}
