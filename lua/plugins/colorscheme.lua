-- colorscheme.lua - Theme màu sắc (Phiên bản đơn giản)
-- Nguồn: https://github.com/catppuccin/nvim

return {
    -- Catppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000, -- Load đầu tiên
        config = function()
            require("catppuccin").setup({
                flavour = "frappe",
            })
            
            -- Áp dụng theme
            vim.cmd.colorscheme("catppuccin")
        end,
    },
}