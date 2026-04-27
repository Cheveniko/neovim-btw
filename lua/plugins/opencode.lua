return {
  'sudo-tee/opencode.nvim',
  config = function()
    require('opencode').setup {
      keymap = {
        editor = {
          ['<leader>oc'] = { 'quick_chat', mode = { 'n', 'x' } },
        },
        input_window = {
          ['<esc>'] = false,
          ['<tab>'] = { 'switch_mode' },
        },
        output_window = {
          ['<esc>'] = false,
          ['<tab>'] = { 'switch_mode' },
        },
      },
    }
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        anti_conceal = { enabled = false },
        file_types = { 'opencode_output' },
      },
      ft = { 'Avante', 'copilot-chat', 'opencode_output' },
    },
    'saghen/blink.cmp',
    'nvim-telescope/telescope.nvim',
  },
}
