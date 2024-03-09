-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- IMPORTING CONFIG
require 'options'
require 'keymaps'

-- loads lazy plugin manager
require 'lazy-bootstrap'
-- lists and installs all plugins using lazy
require 'lazy-plugins'

-- setting colorscheme
require('onedark').setup {
  style = 'warmer',
  transparent = true, -- to get terminal color
  term_colors = false, -- Change terminal color as per the selected theme style
}

require('onedark').load()

-- creating custom commands for convience
vim.api.nvim_create_user_command('Touch', function()
  vim.cmd 'enew'
  vim.cmd 'edit .'
end, {})

-- format on save
-- vim.api.nvim_create_autocmd('BufWritePre', {
--   pattern = '*',
--   callback = function(args)
--     require('conform').format { bufnr = args.buf }
--   end,
-- })
