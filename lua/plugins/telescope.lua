return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make'
        },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("telescope").setup({
            defaults = {
                file_ignore_patterns = {
                    "node_modules",
                    "dist",
                    "build",
                    "vendor",
                },
                mappings = {
                    i = {
                        ["<C-j>"] = require("telescope.actions").preview_scrolling_up,
                        ["<C-d>"] = require("telescope.actions").preview_scrolling_down,
                    },
                    n = {
                        ["<C-j>"] = require("telescope.actions").preview_scrolling_up,
                        ["<C-d>"] = require("telescope.actions").preview_scrolling_down,
                    },
                }
            },
            extensions = {
                fzf = {}
            }
        })

        require("telescope").load_extension("fzf")

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
        vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
        vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Grep string" })
    end
}
