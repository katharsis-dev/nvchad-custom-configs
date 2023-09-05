---@type MappingsTable
local M = {}

-- This is how to disable keymaps
M.disabled = {
    n = {
        ["<A-h>"] = "",
        ["<A-v>"] = "",
        ["<A-j>"] = "",
        ["<A-k>"] = "",
        ["<A-l>"] = "",
    }
}

M.general = {
    n = {
        [";"] = { ":", "enter command mode", opts = { nowait = true } },
        ["<leader>tr"] = {
            function()
                require("base46").toggle_transparency()
            end,
            "Toggle transparency",
        },

        ["<leader>fkm"] = {
            ":Telescope keymaps<CR>",
            "Search for keymaps",
        },
        ["<leader>rl"] = {
            ":LspRestart<CR>",
            "Reload LSP",
        },
        ["<C-j>"] = {
            "<C-d>zz",
            "Scroll down"
        },

        ["<C-k>"] = {
            "<C-u>zz",
            "Scroll up"
        },
        ["<C-u>"] = {
            "<C-d>zz",
            "Scroll down"
        },

        ["<C-d>"] = {
            "<C-u>zz",
            "Scroll up"
        },
    },
}

M.nvterm = {
    n = {
        ["<C-\\>"] = {
            function()
                require("nvterm.terminal").toggle("horizontal")
            end,
            "Toggle Terminal Horizontal",
        },
        -- toggle in normal mode
        ["<leader>tf"] = {
          function()
            require("nvterm.terminal").toggle "float"
          end,
          "Toggle floating term",
        },
    },
    t = {
        ["<esc>"] = {"<C-\\><C-n>", "Go to Normal mode from Terminal mode"},
        ["<C-\\>"] = {
            function()
                require("nvterm.terminal").toggle("horizontal")
            end,
            "Toggle Terminal Horizontal",
        },
        -- toggle in normal mode
        ["<leader>tf"] = {
          function()
            require("nvterm.terminal").toggle "float"
          end,
          "Toggle floating term",
        },
    }
}

M.tabufline = {
    n = {
        ["<A-.>"] = { function() require("nvchad.tabufline").tabuflineNext() end, "Goto next buffer", },
        ["<A-,>"] = { function() require("nvchad.tabufline").tabuflinePrev() end, "Goto prev buffer", },
        ["<A-w>"] = {
          function()
            require("nvchad.tabufline").close_buffer()
          end,
          "Close buffer",
        },

    }
}

M.lspconfig = {
    n = {
        ["gl"] = {
            function()
                vim.diagnostic.open_float { border = "rounded" }
            end,
            "Floating diagnostic",
        },
    }
}

-- more keybinds!

return M
