return {
  'kyazdani42/nvim-tree.lua',
  config = function()
    local tree_api = require 'nvim-tree.api'

    local function my_on_attach(bufnr)
      local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      tree_api.config.mappings.default_on_attach(bufnr)

      vim.keymap.set('n', '<C-t>', tree_api.tree.change_root_to_parent, opts 'Up')
      vim.keymap.set('n', '?', tree_api.tree.toggle_help, opts 'Help')
    end

    require('nvim-tree').setup {
      hijack_cursor = false,
      sort = {
        sorter = 'case_sensitive',
      },
      view = {
        width = 30,
        number = false,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
        custom = { '^\\.git', '^\\.DS_Store$', '^next-env\\.d\\.ts$' }, -- Hide .git, .DS_Store, and next-env.d.ts files
      },
      on_attach = my_on_attach,

      git = {
        ignore = false,
      },
    }

    local function open_nvim_tree(data)
      local real_file = vim.fn.filereadable(data.file) == 1
      local no_name = data.file == '' and vim.bo[data.buf].buftype == ''

      if not real_file and not no_name then
        return
      end

      tree_api.tree.toggle { focus = false, find_file = true }
    end

    vim.api.nvim_create_autocmd({ 'VimEnter' }, { callback = open_nvim_tree })
  end,
}
