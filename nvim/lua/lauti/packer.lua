-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        use {
                'nvim-telescope/telescope.nvim', tag = '0.1.2',
                requires = { { 'nvim-lua/plenary.nvim' } }
        }

        use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
        use('theprimeagen/harpoon')
        use {
                'vonheikemen/lsp-zero.nvim',
                branch = 'v2.x',
                requires = {
                        -- lsp support
                        { 'neovim/nvim-lspconfig' },             -- required
                        { 'williamboman/mason.nvim' },           -- optional
                        { 'williamboman/mason-lspconfig.nvim' }, -- optional

                        -- autocompletion
                        { 'hrsh7th/nvim-cmp' },     -- required
                        { 'hrsh7th/cmp-nvim-lsp' }, -- required
                        { 'l3mon4d3/luasnip' },     -- required
                }
        }
        require('packer').startup(function(use)
                use({ 'rose-pine/neovim', as = 'rose-pine' })
        end)
end)
