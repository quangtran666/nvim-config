local keymap = vim.keymap

-- ==== LEADER KEY ====
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
keymap.set("n", "<leader>q", "<cmd>q!<CR>", { desc = "Fast quit" })
keymap.set("i", "kj", "<Esc>", { desc = "Fast exit insert mode" })
keymap.set("n", "gl", "$", { desc = "Go to last character of line" })
keymap.set("n", "gh", "^", { desc = "Go to first non-white character of line" })
