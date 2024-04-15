-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

--     use {"akinsho/toggleterm.nvim", tag = '*', config = [[require('config.toggleterm')]] }
    use {'voldikss/vim-floaterm' }

    use 'nvim-pack/nvim-spectre'

    use {'stevearc/aerial.nvim', config = [[require('config.aerial')]] }
    use {'mfussenegger/nvim-dap', config = [[require('config.dap')]] }
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}, config = [[require('config.dapui')]] }

    use 'nvim-lua/plenary.nvim'

    use { 'folke/trouble.nvim', require = 'nvim-tree/nvim-web-devicons', config = function() require('trouble').setup() end }

    -- use 'puremourning/vimspector'

    use { 'numToStr/Comment.nvim', config = function() require('comment').setup() end }

    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons', config = [[require('config.bufferline')]] }

    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

    use {'simrat39/rust-tools.nvim', config = [[require('config.rust-tools')]] }

    use {
        'nvim-treesitter/nvim-treesitter',
        config = [[require('config.treesitter')]],
        run = ':TSUpdate'
    }

    use ({
		'kyazdani42/nvim-tree.lua',
		cmd = {
			"NvimTreeClipboard",
			"NvimTreeClose",
			"NvimTreeFindFile",
			"NvimTreeOpen",
			"NvimTreeRefresh",
			"NvimTreeToggle",
		},
		requires = 'kyazdani42/nvim-web-devicons',
        config = [[require('config.nvim-tree')]],
	})

    use 'github/copilot.vim'

    -- You can alias plugin names
    use {'maxmx03/dracula.nvim', as = 'dracula' }
    use {'rebelot/kanagawa.nvim', as = 'kanagawa' }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = [[require('config.lualine')]],
    }

    -- Completion framework:
    use {'hrsh7th/nvim-cmp', config = [[require('config.cmp')]] }

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
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- theme
    use ({'sainnhe/sonokai'})
    -- use ({'rebelot/kanagawa.nvim'})
    -- use ({'folke/tokyonight.nvim'})

    -- db client
    use {
        "kndndrj/nvim-dbee",
        requires = {
            "MunifTanjim/nui.nvim",
        },
        run = function()
            -- Install tries to automatically detect the install method.
            -- if it fails, try calling it with one of these parameters:
            --    "curl", "wget", "bitsadmin", "go"
            require("dbee").install()
        end,
        config = function()
            require("dbee").setup {
                    sources = {
                        require("dbee.sources").EnvSource:new("DBEE_CONNECTIONS"),
                    },
                }
        end
    }

end)

