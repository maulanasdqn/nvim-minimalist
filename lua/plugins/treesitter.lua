return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		vim.opt.runtimepath:append("~/.nvim-treesiter/parsers")
		local tree = require("nvim-treesitter.configs")

		tree.setup({
			parser_install_dir = "~/.nvim-treesiter/parsers",
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"tsx",
				"typescript",
				"html",
				"css",
				"javascript",
				"nix",
				"markdown",
				"markdown_inline",
			},
			highlight = {
				enable = true,
				disable = {},
			},
			indent = {
				enable = true,
				disable = {},
			},
			autotag = {
				enable = true,
			},
		})
	end,
}
