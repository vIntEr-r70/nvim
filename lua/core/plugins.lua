
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ 'phaazon/hop.nvim' },

    { "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },

    -- { 'nvim-treesitter/nvim-treesitter' },

    { 'neovim/nvim-lspconfig'},

    { 'navarasu/onedark.nvim' },

    { 'williamboman/mason.nvim', 
        build = ":MasonUpdate" 
    },

    { 'nvim-telescope/telescope.nvim', 
        branch = '0.1.x', 
        dependencies = { 
            'nvim-lua/plenary.nvim', 
            { 'nvim-telescope/telescope-fzf-native.nvim', build = "make" },
            'nvim-tree/nvim-web-devicons'
        } 
    },

    -- { "nvim-zh/better-escape.vim" },
    --
    -- { 'windwp/nvim-autopairs'},
    --
    -- { "akinsho/bufferline.nvim", 
    --     dependencies = { 'nvim-tree/nvim-web-devicons' }
    -- },

    {
        'numToStr/Comment.nvim',
        opts = { },
        lazy = false,
    },

    { 'lewis6991/gitsigns.nvim' },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons', 
            'linrongbin16/lsp-progress.nvim'
        }
    },

    -- { "folke/which-key.nvim" },
    --
    -- { "hrsh7th/nvim-cmp" },
    -- { "hrsh7th/cmp-nvim-lsp" },
    -- { 'hrsh7th/vim-vsnip' },
    -- { 'hrsh7th/vim-vsnip-integ' },
    --
    -- { 'echasnovski/mini.icons' },
})
