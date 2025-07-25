return {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = {
        'rafamadriz/friendly-snippets',
    },
    -- use a release tag to download pre-built binaries
    version = '1.*',
    opts = {
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
        keymap = {
            preset = 'none',
            ["<Tab>"] = { "accept", "fallback" },
            ["<C-j>"] = { "select_prev", "fallback" },
            ["<C-k>"] = { "select_next", "fallback" },
            ["<C-e>"] = { "hide", "fallback" },
            ["<C-h>"] = { "show_signature", "hide_signature", "fallback" },
            ["<C-d>"] = { "show_documentation", "hide_documentation", "fallback" },
            ["<C-space>"] = { "show", "fallback" },
            ["<C-Up>"] = { "scroll_documentation_up", "fallback" },
            ["<C-Down>"] = { "scroll_documentation_down", "fallback" },
        },
        appearance = {
            nerd_font_variant = 'mono'
        },
        completion = {
            list = {
                selection = { preselect = true, auto_insert = false },
            },
            trigger = {
                show_on_keyboard = true,
                show_on_trigger_character = true,
                show_on_insert_on_trigger_character = true,
                show_on_accept_on_trigger_character = true,
            },
            menu = {
                draw = {
                    gap = 2,
                    components = {
                        kind_icon = {
                            ellipsis = false,
                            text = function(ctx) return ctx.kind .. ctx.icon_gap end,
                            highlight = function(ctx) return { { group = ctx.kind_hl, priority = 20000 } } end,
                        },
                    }
                },
            },
            documentation = { auto_show = true, auto_show_delay_ms = 100 }
        },
        fuzzy = { implementation = "prefer_rust_with_warning" },
        signature = { enabled = true },
        cmdline = {
            enabled = true,
            keymap = { preset = "inherit" },
            completion = {
                menu = {
                    auto_show = true
                }
            }
        }
    },
    opts_extend = { "sources.default" }
}
