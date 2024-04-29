-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.lua',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },y
  opts = {
    filesystem = {
      close_if_last_window = true,
      follow_current_file = {
        enabled = true,
      },
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false, 
        hide_gitignore = false,
      },
      window = {
        position = 'left',
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
