return {
    "mason-org/mason.nvim",
    lazy = false, -- Load this plugin immediately to ensure PATH is set,
    cmd = "Mason",
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    build = ":MasonUpdate",
    opts = {
        ensure_installed = {
            -- LSP servers (matching your vim.lsp.enable() config)
            "lua-language-server", -- Lua LSP
        }
    },
    config = function(_, opts)
        require("mason").setup(opts)
    end
}
