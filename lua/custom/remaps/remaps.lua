-- Equivalent to option + up or down in vsc*de
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Center screen and keep cursor on center
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Keep cursor on the middle on search
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Go to last line and center screen
vim.keymap.set('n', 'G', 'Gzz')

-- Delete highlighted text on to the void and paste
vim.keymap.set('x', '<leader>p', '"_dP')

-- Copy to end of line
vim.keymap.set('n', 'Y', 'y$')
vim.keymap.set('v', 'Y', '$y')

-- Copy to system clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+y$')
vim.keymap.set('v', '<leader>Y', '"+$y')

-- Delete highlighted text on to the void
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

-- Fugitive
vim.api.nvim_create_user_command('VGit', 'vertical Git', { desc = 'Open Git vertically' })
vim.keymap.set('n', '<leader>gs', vim.cmd.VGit, { desc = 'Git [S]tatus' })

-- Jump to previous buffer
vim.keymap.set('n', '<C-g>', '<C-^>zz', { desc = '[G]o to previous buffer' })

-- Move tabs position
vim.keymap.set('n', '<leader><Left>', '<cmd>tabm -1<CR>')
vim.keymap.set('n', '<leader><Right>', '<cmd>tabm +1<CR>')

-- Disable default vim mappings
vim.keymap.set('n', 'L', '<Nop>')
vim.keymap.set('n', 'H', '<Nop>')
vim.keymap.set('n', 'M', '<Nop>')
vim.keymap.set('v', 'L', '<Nop>')
vim.keymap.set('v', 'H', '<Nop>')
vim.keymap.set('v', 'M', '<Nop>')
vim.keymap.set('n', '<C-m>', '<Nop>')
vim.keymap.set('v', '<C-m>', '<Nop>')

-- Undo tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = '[U]ndo tree' })

-- Markdown Preview
vim.keymap.set('n', '<leader>mp', vim.cmd.MarkdownPreview, { desc = '[M]arkdown [P]review' })

-- LSP
vim.keymap.set('n', '<leader>lr', vim.cmd.LspRestart, { desc = '[L]SP [R]estart' })

-- Avante
vim.keymap.set('n', '<leader>ae', 'v<cmd>AvanteEdit<CR>', { desc = 'avante: edit' })

-- Increase and decrease window size
vim.keymap.set('n', '>', '<C-w>>', { desc = 'Increase window width' })
vim.keymap.set('n', '<lt>', '<C-w><lt>', { desc = 'Decrease window width' })
vim.keymap.set('n', '+', '<C-w>+', { desc = 'Increase window height' })
vim.keymap.set('n', '-', '<C-w>-', { desc = 'Decrease window height' })

-- Close tab
vim.keymap.set('n', '<C-c>', '<cmd>tabclose<CR>')

-- Gitsigns
vim.keymap.set('n', '<leader>gh', '<cmd>Gitsigns preview_hunk_inline <CR>', { desc = 'Git [H]unk' })
vim.keymap.set('n', '<leader>gn', '<cmd>Gitsigns next_hunk <CR>', { desc = 'Git [N]ext [H]unk' })
vim.keymap.set('n', '<leader>gp', '<cmd>Gitsigns prev_hunk <CR>', { desc = 'Git [P]revious [H]unk' })

-- Reselect yanked text
vim.keymap.set('n', 'gl', '`[`]zz', { desc = 'Go to [L]ast character of yanked text' })
vim.keymap.set('v', 'gl', '`[`]zz', { desc = 'Select to [L]ast character of yanked text' })

-- Indent and unindent in visual mode
vim.keymap.set('v', '<Tab>', '>gv', { desc = 'Indent selection' })
vim.keymap.set('v', '<S-Tab>', '<lt>gv', { desc = 'Unindent selection' })
