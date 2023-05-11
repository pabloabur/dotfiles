vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({'rose-pine/neovim', as = 'rose-pine' })
    -- use 'rebelot/kanagawa.nvim'
    vim.cmd('colorscheme rose-pine')

    use{'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use{'nvim-treesitter/nvim-treesitter-context'}
    use{'mbbill/undotree'}
    use{'tpope/vim-fugitive'}
    use{'tpope/vim-surround'}
    use{'unblevable/quick-scope'}
    use{'numToStr/Comment.nvim'}

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use{'jpalardy/vim-slime'}
    use 'airblade/vim-gitgutter'
    use{'vimwiki/vimwiki',
        config = function()
            vim.g.vimwiki_list = {
                {path = '~/Dropbox/vimwiki/professional/',
                template_path = '~/Dropbox/vimwiki/templates/',
                template_default = 'default',
                template_ext = '.html'},
                {path = '~/Dropbox/vimwiki/system/'},
                {path = '~/Dropbox/vimwiki/personal/'},
                {path = '~/Dropbox/vimwiki/notes/',
                template_path = '~/Dropbox/vimwiki/templates/',
                template_default = 'default',
                template_ext = '.html'},
            }
        end}

  end)
