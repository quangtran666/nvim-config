-- lazy.lua - Plugin manager setup

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
    -- Import tất cả plugins từ thư mục lua/plugins
    { import = "plugins" },
}, {
    -- Cấu hình cho lazy.nvim
    checker = {
        enabled = true, -- Tự động check updates
        notify = false, -- Không thông báo khi có update
    },
    change_detection = {
        enabled = false, -- Không thông báo khi detect changes
    }
})