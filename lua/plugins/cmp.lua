return {
	"hrsh7th/nvim-cmp",
	event = { "InsertEnter", "CmdlineEnter" },
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
		"onsails/lspkind.nvim",
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			build = "make install_jsregexp",
		},
	},

	config = function()
		local cmp = require("cmp")
		local snip = require("luasnip")
		local kind = require("lspkind")
		local loaderVscode = require("luasnip.loaders.from_vscode")
		local loaderLua = require("luasnip.loaders.from_lua")
		local loaderSnipmate = require("luasnip.loaders.from_snipmate")

		loaderVscode.lazy_load()
		loaderLua.lazy_load()
		loaderSnipmate.lazy_load()

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},

			snipet = {
				expand = function(args)
					snip.lsp_expand(args.body)
				end,
			},

			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(),
				["<C-j>"] = cmp.mapping.select_next_item(),
				["<C-Space>"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),

			sources = cmp.config.sources({
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
				{ name = "nvim_lsp" },
				{
					name = "emmet_vim",
					option = {
						filetypes = {
							"html",
							"css",
							"scss",
							"javascript",
							"javascriptreact",
							"typescript",
							"typescriptreact",
						},
					},
				},
			}),

			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},

			formating = {
				format = kind.cmp_format({
					mode = "symbol",
					maxwidth = 50,
					ellipsis_char = "...",
					symbol_map = {
						Codeium = "",
						Text = "",
						Method = "M",
						Function = "FC",
						Constructor = "",
						Field = "صح",
						Variable = "",
						Class = "شخ",
						Interface = "",
						Module = "",
						Property = "صح",
						Unit = "塞",
						Value = "",
						Enum = "",
						Keyword = "",
						Snippet = "",
						Color = "",
						File = "",
						Reference = "",
						Folder = "",
					},
				}),
			},
		})
	end,
}
