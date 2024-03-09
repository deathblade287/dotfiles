local keymap = vim.api.nvim_set_keymap
local opts = {
  noremap = true,
  silent = false,
}

-- setting leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- NORMAL MODE --
-- Better window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

keymap('n', '<C-Up>', '<C-w>h', opts)
keymap('n', '<C-Down>', '<C-w>j', opts)
keymap('n', '<C-Left>', '<C-w>k', opts)
keymap('n', '<C-Right>', '<C-w>l', opts)

-- Resize with arrows
keymap('n', '<C-S-Up>', ':resize +2<CR>', opts)
keymap('n', '<C-S-Down>', ':resize -2<CR>', opts)
keymap('n', '<C-S-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-S-Right>', ':vertical resize +2<CR>', opts)

keymap('n', '<C-S-h>', ':resize +2<CR>', opts)
keymap('n', '<C-S-j>', ':resize -2<CR>', opts)
keymap('n', '<C-S-k>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-S-l>', ':vertical resize +2<CR>', opts)

-- Navigate buffers
keymap('n', '<leader>nf', ':Touch<CR>', opts)
keymap('n', '<C-t>', ':Touch<CR>', opts)

keymap('n', '<leader>c', ':bdelete<CR>', opts)

keymap('n', '<C-Tab>', ':bnext<CR>', opts)
keymap('n', '<C-S-Tab>', ':bprevious<CR>', opts)

keymap('n', '<leader>bn', ':bnext<CR>', opts)
keymap('n', '<leader>bp', ':bprevious<CR>', opts)

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- INSERT MODE --
-- keymap('i', '<C-]>', 'copilot#Accept(“<CR>”)', {
--   silent = true,
--   expr = true,
--   noremap = true,
-- })

-- format and save 
vim.api.nvim_create_user_command("W", function()
  require('conform').format { bufnr = vim.api.nvim_get_current_buf() }
  vim.cmd("w")
end, {})

-- VISUAL MODE --
-- yanked test in persistent instead of copying the text that you pasted over
keymap('v', '<A-j>', ':m .+1<CR>==', opts)
keymap('v', '<A-k>', ':m .-2<CR>==', opts)
keymap('v', 'p', '"_dP', opts)

-- Stay in indent mode
keymap('v', '<A-h>', '<gv', opts)
keymap('v', '<A-l>', '>gv', opts)

-- Move text up and down
-- Visual Block --
-- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- exit terminal mode
-- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Highlight when yanking (copying) text
-- vim.api.nvim_create_autocmd('TextYankPost', {
--   desc = 'Highlight when yanking (copying) text',
--   group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
--   callback = function()
--     vim.highlight.on_yank()
--   end,
-- })


