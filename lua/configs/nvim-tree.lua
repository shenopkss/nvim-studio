require("nvim-tree").setup({
    sort_by = "case_sensitive",
    hijack_cursor = true,
    system_open = {
        cmd = "open",
    },
    view = {
        width = function()
            local winwidth = vim.fn.winwidth(0)
            if winwidth <= 100 then
                return 30
            elseif winwidth <= 200 then
                return 40
            else
                return 50
            end
        end,
        adaptive_size = true,
    },
    renderer = {
        group_empty = true,
        icons = {
            show = {
                git = false,
                file = false,
                folder = false,
                folder_arrow = true,
            },
            glyphs = {
                bookmark = " ",
                folder = {
                    arrow_closed = "⏵",
                    arrow_open = "⏷",
                },
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "⌥",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "⊖",
                    ignored = "◌",
                },
            },
        },
    },
    filters = {
        dotfiles = false,
    },
})
