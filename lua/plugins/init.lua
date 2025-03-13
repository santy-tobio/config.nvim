return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "github/copilot.nvim",
    lazy = false,
    url = "git@github.com:github/copilot.vim.git",
    config = function()
    -- Habilitar para todos los tipos de archivo
    vim.g.copilot_filetypes = { ["*"] = true }
   end,
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css","markdown", "markdown_inline"
  		},
    highlight = {
      enable = true},
  	},
  },
}
