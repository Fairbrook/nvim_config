-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Telescope fuzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- Theme
    use { "ellisonleao/gruvbox.nvim" }
    -- Tree sitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    -- Harpoon for marking files
    use('ThePrimeagen/harpoon')
    -- Undotree
    use('mbbill/undotree')
    -- LSP plugins
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },                  -- Required
            { 'hrsh7th/cmp-nvim-lsp' },              -- Required
            { 'L3MON4D3/LuaSnip' },                  -- Required
            { 'onsails/lspkind-nvim' }
        }
    }
    -- Airline
    use('vim-airline/vim-airline')
    use('vim-airline/vim-airline-themes')
    -- Autopairs
    use('windwp/nvim-autopairs')
    use 'tpope/vim-obsession'
    -- For better netrw
    use 'tpope/vim-vinegar'
    -- For git management
    use 'kdheepak/lazygit.nvim'

    use 'jose-elias-alvarez/null-ls.nvim'

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)
