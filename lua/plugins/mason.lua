return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},

	config = function()
		local mason = require("mason")
		local lsp = require("mason-lspconfig")
		local install = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "S",
					package_pending = "P",
					package_unnstalled = "U",
				},
			},
		})

		lsp.setup({
			ensure_installed = {
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"emmet_ls",
			},
		})

		install.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"eslint_d",
			},
		})
	end,
}
