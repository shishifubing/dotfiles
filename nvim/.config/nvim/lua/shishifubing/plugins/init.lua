return {
    -- Git related plugins
    "tpope/vim-fugitive",
    "tpope/vim-rhubarb",

    -- Detect tabstop and shiftwidth automatically
    "tpope/vim-sleuth",

    -- Useful plugin to show you pending keybinds.
    { "folke/which-key.nvim", opts = {} },
    {
        -- Theme inspired by Atom
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("onedark")
        end,
    },

    {
        -- Set lualine as statusline
        "nvim-lualine/lualine.nvim",
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = false,
                theme = "onedark",
                component_separators = "|",
                section_separators = "",
            },
        },
    },

    {
        -- Add indentation guides even on blank lines
        "lukas-reineke/indent-blankline.nvim",
        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help ibl`
        main = "ibl",
        opts = {},
    },

    -- "gc" to comment visual regions/lines
    { "numToStr/Comment.nvim", opts = {} },

    -- Fuzzy Finder (files, lsp, etc)
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            -- Fuzzy Finder Algorithm which requires local dependencies to be built.
            -- Only load if `make` is available. Make sure you have the system
            -- requirements installed.
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                -- NOTE: If you are having trouble with this installation,
                --       refer to the README for telescope-fzf-native for more instructions.
                build = "make",
                cond = function()
                    return vim.fn.executable("make") == 1
                end,
            },
        },
        opts = {
            defaults = {
                mappings = {
                    i = {
                        ["<C-u>"] = false,
                        ["<C-d>"] = false,
                    },
                },
            },
        },
    },

    {
        -- Highlight, edit, and navigate code
        "nvim-treesitter/nvim-treesitter",
    },
}