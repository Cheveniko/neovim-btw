return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  lazy = false,
  version = false, -- set this to "*" if you want to always pull the latest change, false to update on release
  opts = {
    provider = 'copilot',
    hints = { enabled = false },
  },
  build = 'make',
  dependencies = {
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    -- The below dependencies are optional,
    -- 'hrsh7th/nvim-cmp', -- autocompletion for avante commands and mentions
    'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
    'zbirenbaum/copilot.lua', -- for providers='copilot'
  },
}
