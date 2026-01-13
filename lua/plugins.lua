return {{'wbthomason/lazy.nvim'}, {'voldikss/vim-floaterm'}, {'nvim-pack/nvim-spectre'}, {
    'stevearc/aerial.nvim',
    config = function()
        require('config.aerial')
    end
}, {
    'mfussenegger/nvim-dap',
    config = function()
        require('config.dap')
    end
}, {
    'nvim-neotest/nvim-nio',
    config = function()
        -- require('config.dap')
    end
}, {
    'rcarriga/nvim-dap-ui',
    requires = {'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio'},
    config = function()
        require('config.dapui')
    end
}, {'nvim-lua/plenary.nvim'}, {
    'folke/trouble.nvim',
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
        require('trouble').setup()
    end
}, {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}, {
    'akinsho/bufferline.nvim',
    tag = "*",
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
        require('config.bufferline')
    end
}, {'williamboman/mason.nvim'}, {'williamboman/mason-lspconfig.nvim'}, {'neovim/nvim-lspconfig'}, {
    'simrat39/rust-tools.nvim',
    config = function()
        require('config.rust-tools')
    end
}, {
    'nvim-treesitter/nvim-treesitter',
    config = function()
        require('config.treesitter')
    end,
    run = ':TSUpdate'
}, {
    'kyazdani42/nvim-tree.lua',
    cmd = {"NvimTreeClipboard", "NvimTreeClose", "NvimTreeFindFile", "NvimTreeOpen", "NvimTreeRefresh", "NvimTreeToggle"},
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
        require('config.nvim-tree')
    end
}, {'github/copilot.vim'}, -- You can alias plugin names
{
    'maxmx03/dracula.nvim',
    as = 'dracula'
}, {
    'rebelot/kanagawa.nvim',
    as = 'kanagawa'
}, {
    'nvim-lualine/lualine.nvim',
    requires = {
        'nvim-tree/nvim-web-devicons',
        opt = true
    },
    config = function()
        require('config.lualine')
    end
}, -- Completion framework:
{
    'hrsh7th/nvim-cmp',
    config = function()
        require('config.cmp')
    end
}, -- LSP completion source:
{'hrsh7th/cmp-nvim-lsp'}, -- Useful completion sources:
{'hrsh7th/cmp-nvim-lua'}, {'hrsh7th/cmp-nvim-lsp-signature-help'}, {'hrsh7th/cmp-vsnip'}, {'hrsh7th/cmp-path'},
        {'hrsh7th/cmp-buffer'}, {'hrsh7th/vim-vsnip'}, {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    requires = {'nvim-lua/plenary.nvim'}
}, -- theme
-- {'sainnhe/sonokai'}, 
-- { 'rebelot/kanagawa.nvim' },
-- { 'folke/tokyonight.nvim' },
{"Mofiqul/dracula.nvim"}}
