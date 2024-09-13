vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { silent = true, desc = "Clean Up Search Result" })
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", { silent = true, desc = "Toggle Nvim Tree" })
keymap.set("n", "<leader>t", ":Lspsaga term_toggle<CR>", { silent = true, desc = "Toggle Nvim Tree" })
keymap.set("n", "f", ":Lspsaga goto_definition<CR>", { silent = true, desc = "Go to definition" })
keymap.set("n", "Q", ":Lspsaga code_action<CR>", { silent = true, desc = "Code Action" })
keymap.set("n", "e", ":Lspsaga diagnostic_jump_next <CR>", { silent = true, desc = "Diagnostic Jump Next" })
keymap.set("n", "E", ":Lspsaga diagnostic_jump_prev <CR>", { silent = true, desc = "Diagnostic Jump Prev" })
keymap.set("n", "F", ":Lspsaga peek_definition<CR>", { silent = true, desc = "Peek definition" })
keymap.set("n", "D", ":Lspsaga hover_doc<CR>", { silent = true, desc = "Hover doc" })
