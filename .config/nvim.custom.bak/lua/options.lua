local options = {
    backup = false,
    writebackup = true,
    -- clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
    -- fileencoding = "utf-8",                  -- the encoding written to a file

    hlsearch = true, -- highlight all matches on previous search pattern
    ignorecase = true, -- ignore case in search patterns

    mouse = "a", -- allow the mouse to be used in neovim (in all modes)
    -- pumheight = 10,                          -- pop up menu height

    -- showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
    -- smartcase = true,                        -- smart case
    smartindent = true, -- make indenting smarter again

    splitbelow = true, -- force all horizontal splits to go below current window
    splitright = true, -- force all vertical splits to go to the right of current window

    -- swapfile = false,                        -- creates a swapfile

    termguicolors = false, -- set term gui colors (most terminals support this)
    -- timeoutlen = 1000,                        -- time to wait for a mapped sequence to complete (in milliseconds)
    undofile = true, -- When 'undofile' is turned off the undo file is NOT deleted.
    -- updatetime = 300,                        -- faster completion (4000ms default)
    expandtab = true, -- convert tabs to spaces
    shiftwidth = 4, -- the number of spaces inserted for each indentation
    tabstop = 4, -- insert 2 spaces for a tab
    number = true, -- set numbered lines
    -- relativenumber = true,                  -- set relative numbered lines
    -- numberwidth = 4,                         -- set number column width to 2 {default 4}
    -- signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
    wrap = false, -- display lines as one long line
    scrolloff = 10, -- minimum number of lines to display above and below during scrolling
    sidescrolloff = 10
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
