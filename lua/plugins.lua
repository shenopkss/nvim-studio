-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use { 'voldikss/vim-floaterm', config = function() require('comment').setup() end }

    use {'stevearc/aerial.nvim', config = [[require('configs.aerial')]] }
    use {'mfussenegger/nvim-dap', config = [[require('configs.dap')]] }
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap-ui"}, config = [[require('configs.dapui')]] }
    use 'nvim-lua/plenary.nvim'

    use { 'folke/trouble.nvim', require = 'nvim-tree/nvim-web-devicons', config = function() require('trouble').setup() end }

    -- use 'puremourning/vimspector'

    use { 'numToStr/Comment.nvim', config = function() require('comment').setup() end }

    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons', config = [[require('configs.bufferline')]] }

    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

    use {'simrat39/rust-tools.nvim', config = [[require('configs.rust-tools')]] }

    use {
        'nvim-treesitter/nvim-treesitter',
        config = [[require('configs.treesitter')]],
        run = ':TSUpdate'
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        config = [[require('configs.nvim-tree')]],
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use 'github/copilot.vim'

    -- You can alias plugin names
    use {'dracula/vim', as = 'dracula', config=vim.cmd[[colorscheme dracula]]}

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = [[require('configs.lualine')]],
    }

    -- Completion framework:
    use {'hrsh7th/nvim-cmp', config = [[require('configs.cmp')]] }

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = [[require('configs.telescope')]] 
    }

end)

