call plug#begin('~/.nvim-autoload/plugged')

" Coc completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'prettier/vim-prettier'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'jiangmiao/auto-pairs' " Auto pairs
Plug 'dense-analysis/ale'

" PHP
Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}
Plug 'marlonfan/coc-phpls'

" Color
Plug 'KabbAmine/vCoolor.vim' "Color picker
Plug 'norcalli/nvim-colorizer.lua' "Color highlight
" Colorscheme
Plug 'navarasu/onedark.nvim'
Plug 'bluz71/vim-moonfly-colors'

Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua' " Nvim Tree
Plug 'akinsho/bufferline.nvim' " Bufferline
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lualine/lualine.nvim' "Status line

Plug 'numToStr/Comment.nvim' " Easily comment stuff
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

Plug 'christoomey/vim-tmux-navigator'
Plug 'akinsho/toggleterm.nvim'
Plug 'lewis6991/gitsigns.nvim'

call plug#end()
