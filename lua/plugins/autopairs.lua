return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/nvim-cmp",
	},

	config = function()
		local pair = require("nvim-autopairs")
		local cmp_pair = require("nvim-autopairs.completion.cmp")
		local cmp = require("cmp")

		pair.setup({
			check_ts = true,
			ts_config = {
				lua = { "string" },
				javascript = { "template_string" },
				java = false,
			},
		})

		cmp.event:on("confirm_done", cmp_pair.on_confirm_done())
	end,
}
