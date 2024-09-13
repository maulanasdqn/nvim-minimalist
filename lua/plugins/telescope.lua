return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",

	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local tele = require("telescope")
		local actions = require("telescope.actions")

		tele.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
					},
				},
			},
		})

		tele.load_extension("fzf")

		local keymap = vim.keymap

		keymap.set("n", "<leader>s", "<CMD>Telescope find_files<CR>", { desc = "Fuzzy Find Files" })
		keymap.set("n", "<leader>S", "<CMD>Telescope live_grep<CR>", { desc = "do live grep to entire file" })
		keymap.set("n", "<leader>b", "<CMD>Telescope buffers<CR>", { desc = "do live grep to entire file" })
	end,
}
