local M = {}

M.treesitter = {
    ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "markdown",
        "markdown_inline",
    },
    indent = {
        enable = true,
        -- disable = {
        --   "python"
        -- },
    },
}

M.mason = {
    ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev stuff
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "prettier",

        -- c/cpp stuff
        "clangd",
        "clang-format",
    },
}

-- git support in nvimtree
M.nvimtree = {
    -- disable_netrw = false,
    -- hijack_netrw = false,
    git = {
        enable = true,
    },

    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
    },
}

M.nvterm = {
    terminals = {
        type_opts = {
            float = {
                relative = 'editor',
                row = 0.3,
                col = 0.25,
                width = 0.5,
                height = 0.4,
                border = "single",
            },
            horizontal = { location = "rightbelow", split_ratio = .8, },
        }
    },

}

return M
