local options = {
  backup = false,
  writebackup = true,
  -- allows neovim to access the system clipboard
  clipboard = 'unnamedplus',
  fileencoding = 'utf-8',

  hlsearch = true,
  ignorecase = true,

  mouse = 'a',

  showmode = false, -- we don't need to see things like -- INSERT -- anymore
  -- smartcase = true,                        -- smart case
  smartindent = true,

  splitbelow = true,
  splitright = true,

  swapfile = false, -- removes edits from cache

  termguicolors = false,
  undofile = true, -- When 'undofile' is turned off the undo file is NOT deleted

  expandtab = true,
  shiftwidth = 4,
  tabstop = 4,
  number = true,
  -- relativenumber = true,
  -- numberwidth = 4,
  wrap = false,
  scrolloff = 10,
  sidescrolloff = 10,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
