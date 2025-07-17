-- init.lua - File khởi động chính của Neovim
-- Nguồn: https://neovim.io/doc/user/lua-guide.html

require("config.options") -- Cấu hình chung (số dòng, indent, clipboard...)
require("config.keymaps") -- Cấu hình phím tắt (leader key, window management...)
require("config.lazy")    -- Plugin manager (lazy.nvim)