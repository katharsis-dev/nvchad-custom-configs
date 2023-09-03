---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
    theme = "rosepine",
    transparency = true,
    theme_toggle = { "rosepine", "one_light" },

    hl_override = highlights.override,

    hl_add = highlights.add,

    statusline = {
        theme = "default",
        separator_style = "round"
    },

    tabufline = {
        lazyload = false,
    },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

for i = 1, 9, 1 do
    vim.keymap.set("n", string.format("<A-%s>", i), function()
        vim.api.nvim_set_current_buf(vim.t.bufs[i])
    end)
end

return M
