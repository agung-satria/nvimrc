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

" Database-nya
Plug 'vim-scripts/dbext.vim' " Functions/mappings/commands for Vim to access several databases. 
Plug 'jsborjesson/vim-uppercase-sql' " Auto UPPERCASE SYNTAX in sql file

" Javascript Dev
Plug 'pangloss/vim-javascript' "Mostly for concealing characters

" Tailwind CSS Dev
Plug 'yaegassy/coc-tailwindcss3' " Intelligent Tailwind CSS tooling for coc.nvim
Plug 'brenoprata10/nvim-highlight-colors' " Tailwind CSS color highlight

" Yuck for eww widget
Plug 'elkowar/yuck.vim'

" Color
Plug 'KabbAmine/vCoolor.vim' " Color picker
Plug 'norcalli/nvim-colorizer.lua' " Color highlight
Plug 'kien/rainbow_parentheses.vim'
" Colorscheme
Plug 'EdenEast/nightfox.nvim'
Plug 'navarasu/onedark.nvim'

Plug 'kyazdani42/nvim-tree.lua' " Nvim Tree
Plug 'kyazdani42/nvim-web-devicons' " File icons
Plug 'romgrk/barbar.nvim'
" Plug 'akinsho/bufferline.nvim' " Bufferline
Plug 'nvim-lualine/lualine.nvim' " Status line
" Plug 'yorik1984/newpaper.nvim' " Status line theme
Plug 'lukas-reineke/indent-blankline.nvim' " Indentation line guide
Plug 'metakirby5/codi.vim'
" Plug 'karb94/neoscroll.nvim'

" Icon poicker
Plug 'stevearc/dressing.nvim'
Plug 'ziontee113/icon-picker.nvim'

Plug 'numToStr/Comment.nvim' " Easily comment stuff
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'rhysd/clever-f.vim' "Use fFtT to navigate
Plug 'nvim-lua/plenary.nvim' "Required for Telescope and treesitter
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } " Better file finder
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "Better syntax highlight

Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'

Plug 'mhinz/vim-startify'
Plug 'mechatroner/rainbow_csv' " Give different color to each column in csv file
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive' " git wrapper
Plug 'prettier/vim-prettier'
Plug 'zeekay/vim-beautify'
Plug 'akinsho/toggleterm.nvim'
Plug 'mbbill/undotree'
Plug 'terryma/vim-multiple-cursors'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
