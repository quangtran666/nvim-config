-- keymaps.lua - Phím tắt cơ bản (Phiên bản đơn giản)
-- Nguồn: https://neovim.io/doc/user/map.html

local keymap = vim.keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
keymap.set("n", "<leader>q", "<cmd>q!<CR>", { desc = "Fast quit" })
keymap.set("i", "jj", "<Esc>", { desc = "Fast exit insert mode" })
