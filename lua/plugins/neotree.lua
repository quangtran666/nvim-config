return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
        config = function()
            vim.keymap.set("n", "<leader>e", ":Neotree toggle position=right<CR>", { desc = "Toggle NeoTree" })

            require("neo-tree").setup({
                enable_git_status = true,
                enable_diagnostics = true,
                window = {
                    position = "right",
                    width = 40,
                    mapping_options = {
                        noremap = true,
                        nowait = true,
                    },
                    mappings = {
                        ["<space>"] = {
                            "toggle_node",
                            nowait = false,
                        },
                        ["<2-LeftMouse>"] = "open",
                        ["<cr>"] = "open",
                        ["<esc>"] = "cancel", -- close preview or floating widget
                        ["P"] = {
                            "toggle_preview",
                            config = {
                                use_float = true,
                                use_snacks_image = true,
                                use_image_nvim = true,
                            }
                        },
                        ["S"] = "open_split",
                        ["s"] = "open_vsplit",
                        ["t"] = "open_tabnew",
                        ["w"] = "open_with_window_picker",
                        -- ["C"] = "close_node",
                        -- ["z"] = "close_all_nodes",
                        ["a"] = {
                            "add",
                            config = {
                                show_path = "none", -- "none", "relative", "absolute"
                            },
                        },
                        ["A"] = "add_directory",
                        ["d"] = "delete",
                        ["r"] = "rename",
                        ["y"] = "copy_to_clipboard",
                        ["x"] = "cut_to_clipboard",
                        ["p"] = "paste_from_clipboard",
                        ["c"] = "copy",
                        ["q"] = "close_window",
                        ["R"] = "refresh",
                    }
                }
            })
        end
    }
}
