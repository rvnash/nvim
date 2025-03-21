-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Open file explorer
vim.keymap.set('n', '<leader>v', vim.cmd.Ex, { desc = 'Explorer' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR><cmd>stopinsert<CR>', { desc = 'Clear Search' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  See `:help wincmd` for a list of all window commands
--  Using a Colemak keyboard these characters are n-Left, o-Right, e-Down, i-Up
--  Note, need to set the terminal to treat Left-⌥ on a Mac as "Esc+". In iTerm2 this
--  is in the Profile->Keys settings.
vim.keymap.set('n', '<M-n>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<M-o>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<M-e>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<M-i>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<M-q>', '<C-w><C-q>', { desc = 'Close current window' })
vim.keymap.set('n', '<C-q>', '<C-w><C-q>', { desc = 'Close current window' })

-- From fugitive
vim.keymap.set('n', '<Leader>gi', vim.cmd.Git, { desc = 'Open Git window' })

-- Move selected lines of code in visual mode
vim.keymap.set('v', 'j', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'k', ":m '<-2<CR>gv=gv")

-- Keep the cursor in the middle for a few operations
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', 'n', 'nzzzv')

-- Paste but keep same in yank buffer
vim.keymap.set('x', '<Leader>p', '"_dP')
vim.keymap.set('n', '<Leader>d', '"_d')
vim.keymap.set('v', '<Leader>d', '"_d')
