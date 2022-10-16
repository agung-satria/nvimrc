call plug#begin('~/.nvim-autoload/plugged')

" Dev
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'

" PHP Dev
Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}
Plug 'marlonfan/coc-phpls'

" Tailwind CSS Dev
Plug 'yaegassy/coc-tailwindcss3' " Intelligent Tailwind CSS tooling for coc.nvim
Plug 'brenoprata10/nvim-highlight-colors' " Tailwind CSS color highlight

" Color
Plug 'KabbAmine/vCoolor.vim' " Color picker
Plug 'norcalli/nvim-colorizer.lua' " Color highlight
Plug 'kien/rainbow_parentheses.vim'
" Colorscheme
Plug 'navarasu/onedark.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'bluz71/vim-nightfly-guicolors'

Plug 'kyazdani42/nvim-tree.lua' " Nvim Tree
Plug 'kyazdani42/nvim-web-devicons' " File icons
Plug 'akinsho/bufferline.nvim' " Bufferline
Plug 'nvim-lualine/lualine.nvim' " Status line
Plug 'lukas-reineke/indent-blankline.nvim' " Indentation line guide
Plug 'metakirby5/codi.vim'
Plug 'karb94/neoscroll.nvim'

Plug 'numToStr/Comment.nvim' " Easily comment stuff
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'rhysd/clever-f.vim' "Use fFtT to navigate
Plug 'nvim-lua/plenary.nvim' "Required for Telescope and treesitter
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } " Better file finder
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "Better syntax highlight

Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive' " git wrapper
Plug 'prettier/vim-prettier'
Plug 'zeekay/vim-beautify'
Plug 'akinsho/toggleterm.nvim'
Plug 'mbbill/undotree'
Plug 'terryma/vim-multiple-cursors'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
