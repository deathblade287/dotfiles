-- importing configuratin
require("plugins")
require("options")
require("keymaps")

-- setting colorscheme
require("onedark").setup({
	style = "warmer",
	transparent = true, -- to get terminal color
	term_colors = false, -- Change terminal color as per the selected theme style
})

require("onedark").load()

-- autocommands =>
-- command to format + save
vim.api.nvim_create_user_command("W", function()
	vim.cmd("Neoformat")
	vim.cmd("w")
end, {})

vim.api.nvim_create_user_command("Touch", function()
	vim.cmd("enew")
	vim.cmd("edit .")
end, {})

-- autostarting coq
-- vim.cmd(':COQnow -s')
