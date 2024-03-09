-- installing lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- installing plugins (list)
local plugins = {
	-- file navigation
	{ "nvim-lua/plenary.nvim", lazy = false }, -- dependency of telescope.nvim & harpoon
	"ThePrimeagen/harpoon",
	"nvim-telescope/telescope.nvim",
	-- formatting & commenting
	"numToStr/Comment.nvim", -- TODO: conf needed
	-- {'sbdchd/neoformat'},
	-- autocompletion
	"github/copilot.vim",
	-- TODO: add keyword completion as well and in a way tha it dooesnt clash with copilot and it's tab to complete
	-- themes (lazy load the ones that are not being used)
	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = true,
	},
}

-- lazy.nvim setup + options
local lazyOptions = {
	defaults = {
		lazy = false,
	},
	install = {
		missing = true,
		colorscheme = { "onedark" },
	},
	ui = {
		size = {
			width = 0.8,
			height = 0.8,
		},
		wrap = true,
		-- Uncomment and configure if needed
		-- border = "rounded",
		-- title = "Neovim Plugins",
		-- title_pos = "center", -- @type "center" | "left" | "right"
	},
	performance = {
		cache = {
			enabled = true,
		},
	},
}

-- running lazy.nvim
require("lazy").setup(plugins, lazyOptions)
