local M = {}

function M.setup()
    -- NOTE: You should make sure your terminal supports this
    vim.o.termguicolors = true

    -- set a ruler
    vim.opt.colorcolumn = "80"

    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#595F6F" })

    -- command line overlaps with lualine
    vim.opt.cmdheight = 0

    -- whitespace stuff
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
    vim.opt.smartindent = true

    -- show invisible characters
    vim.opt.listchars = {
        tab = "→ ",
        eol = "↲",
        nbsp = "•",
        trail = "•",
        extends = "⟩",
        precedes = "⟨",
    }
    vim.opt.list = true

    -- auto reload files from disk
    vim.opt.autoread = true

    -- do not change cursor on insert
    vim.opt.guicursor = ""

    -- Set highlight on search
    vim.o.hlsearch = false

    -- Make line numbers default
    vim.wo.number = true

    -- Enable mouse mode
    vim.o.mouse = "a"

    -- Sync clipboard between OS and Neovim.
    --  Remove this option if you want your OS clipboard to remain independent.
    --  See `:help 'clipboard'`
    vim.o.clipboard = "unnamedplus"

    -- Enable break indent
    vim.o.breakindent = true

    -- Save undo history
    vim.o.undofile = true

    -- Case-insensitive searching UNLESS \C or capital in search
    vim.o.ignorecase = true
    vim.o.smartcase = true

    -- Keep signcolumn on by default
    vim.wo.signcolumn = "yes"

    -- Decrease update time
    vim.o.updatetime = 250
    vim.o.timeoutlen = 300

    -- Set completeopt to have a better completion experience
    vim.o.completeopt = "menu,menuone,noselect"
end

return M
