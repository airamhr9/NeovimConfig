vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
    use { "shortcuts/no-neck-pain.nvim", tag = "*" }
    use { 'windwp/nvim-ts-autotag',
    config = function() require("nvim-ts-autotag").setup {} end }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    use "Exafunction/codeium.nvim"

    use({
        "bluz71/vim-moonfly-colors",
        as = "moonfly",
        config = function()
            vim.cmd('colorscheme moonfly')
        end
    })
    use "lukas-reineke/indent-blankline.nvim"
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('fatih/vim-go')

    use 'hrsh7th/nvim-cmp'         -- Completion framework
    use 'hrsh7th/cmp-nvim-lsp'     -- LSP source for nvim-cmp
    use 'hrsh7th/cmp-buffer'       -- Buffer source for nvim-cmp
    use 'hrsh7th/cmp-path'         -- Path source for nvim-cmp
    use 'hrsh7th/cmp-cmdline'      -- Command-line source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippet source for nvim-cmp
    use 'L3MON4D3/LuaSnip'         -- Snippet engine

    -- LSP configuration
    use 'neovim/nvim-lspconfig'    -- Collection of configurations for built-in LSP
    use 'williamboman/mason.nvim'  -- LSP installer
    use 'williamboman/mason-lspconfig.nvim'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    --use { 'neoclide/coc.nvim', branch = 'release' }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end }

        use('mg979/vim-visual-multi')
    end)
