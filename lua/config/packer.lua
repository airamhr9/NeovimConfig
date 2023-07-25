vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        "bluz71/vim-moonfly-colors",
        as = "moonfly",
        config = function()
            vim.cmd('colorscheme moonfly')
        end
    })
    use "lukas-reineke/indent-blankline.nvim"
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('fatih/vim-go')
    -- use('feline-nvim/feline.nvim')
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {'neoclide/coc.nvim', branch = 'release'}
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end }

        use ('mg979/vim-visual-multi')
    end)
