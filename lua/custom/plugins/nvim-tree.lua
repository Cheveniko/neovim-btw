local function my_on_attach(bufnr)
  local api = require 'nvim-tree.api'

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)
  vim.keymap.set('n', '<C-f>', api.tree.toggle)
  vim.keymap.set('n', 'J', api.node.navigate.sibling.next, opts 'Next Sibling')
  vim.keymap.set('n', 'K', api.node.navigate.sibling.prev, opts 'Previous Sibling')
  vim.keymap.del('n', '>', { buffer = bufnr })
  vim.keymap.del('n', '<', { buffer = bufnr })
end

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {

      on_attach = my_on_attach,
      update_focused_file = {
        enable = true,
      },
      live_filter = {
        prefix = '[FILTER]: ',
        always_show_folders = false,
      },
    }
  end,
}
