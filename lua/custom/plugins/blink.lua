return {
  'saghen/blink.cmp',
  -- I hate snippets
  -- dependencies = { 'rafamadriz/friendly-snippets' },

  -- use a release tag to download pre-built binaries
  version = '1.*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = 'default',
      ['<Tab>'] = { 'select_and_accept', 'snippet_forward', 'fallback' },
    },

    -- (Default) Only show the documentation popup when manually triggered
    -- completion = { documentation = { auto_show = false } },
    completion = {
      documentation = { auto_show = true },
      accept = { auto_brackets = { enabled = true } },
    },

    enabled = function()
      return not vim.tbl_contains({ 'gitcommit', 'DressingInput', 'AvanteInput' }, vim.bo.filetype)
    end,

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },

      per_filetype = {
        sql = { 'snippets', 'dadbod', 'buffer' },
        mysql = { 'snippets', 'dadbod', 'buffer' },
        plsql = { 'snippets', 'dadbod', 'buffer' },
      },

      providers = {
        lazydev = {
          name = 'LazyDev',
          module = 'lazydev.integrations.blink',
          -- make lazydev completions top priority (see `:h blink.cmp`)
          score_offset = 100,
        },
        dadbod = { name = 'Dadbod', module = 'vim_dadbod_completion.blink' },
      },
    },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = { implementation = 'prefer_rust_with_warning' },

    signature = { enabled = true },
  },
  opts_extend = { 'sources.default' },
}
