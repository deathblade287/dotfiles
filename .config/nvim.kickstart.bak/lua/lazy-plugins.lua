-- plugin list
local plugins = {
  -- plugins that don't need configuration or need very less tweaking
  -- TODO: understand what vim slueth deos
  { 'tpope/vim-sleuth' },
  { 'numToStr/Comment.nvim', opts = {} },
  {
    'stevearc/oil.nvim',
    opts = {
      default_file_explorer = true,
      delete_to_trash = true,
    },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keymaps = {
      ['g?'] = 'actions.show_help',
      ['<CR>'] = 'actions.select',
      ['<C-s>'] = 'actions.select_vsplit',
      ['<C-h>'] = 'actions.select_split',
      ['<C-t>'] = 'actions.select_tab',
      ['<C-p>'] = 'actions.preview',
      ['<C-c>'] = 'actions.close',
      ['<C-l>'] = 'actions.refresh',
      ['-'] = 'actions.parent',
      ['_'] = 'actions.open_cwd',
      ['`'] = 'actions.cd',
      ['~'] = 'actions.tcd',
      ['gs'] = 'actions.change_sort',
      ['gx'] = 'actions.open_external',
      ['g.'] = 'actions.toggle_hidden',
      ['g\\'] = 'actions.toggle_trash',
    },
  },

  -- plugins with config in ./custom (where ./ is tthe plugins folder itself)
  -- TODO: take a look at default whichkey configuration
  require 'default/plugins/which-key',
  require 'default/plugins/telescope',
  -- TODO: read about all the funcionaliies
  require 'default/plugins/lspconfig',
  require 'default/plugins/conform',
  -- TODO: add some sort of autocompletion - proper cmp implementation + copilot/chatgpt prompter
  require 'default/plugins/cmp',
  require 'default/plugins/onedark',
  require 'default/plugins/todo-comments',
  -- require 'default/plugins/mini',
  require 'default/plugins/neotree',
  require 'default/plugins/treesitter',
  -- require 'default/plugins/dashboard'
}

-- lazy.nvim setup + options
local lazyOptions = {
  defaults = {
    lazy = false,
  },
  install = {
    missing = true,
    colorscheme = { 'onedark' },
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
require('lazy').setup(plugins, lazyOptions)
