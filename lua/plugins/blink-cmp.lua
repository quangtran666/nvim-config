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
        -- See :h blink-cmp-config-keymap for defining your own keymap
        keymap = { preset = 'default' },

        appearance = {
            nerd_font_variant = 'mono'
        },
        completion = {
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
            documentation = { auto_show = false }
        },
        fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
}
