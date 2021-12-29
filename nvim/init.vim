call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ful1e5/onedark.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'vim-scripts/delimitMate.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ellisonleao/glow.nvim'
Plug 'vimwiki/vimwiki'
Plug 'ap/vim-css-color'

call plug#end()

if (has("termguicolors"))
	set termguicolors
endif
syntax on
"let g:onedark_function_style = "italic"
"let g:onedark_transparent = 1
"let g:onedark_highlight_linenumber = 1

" Change the "hint" color to the "orange" color, and make the "error" color bright red
"let g:onedark_colors = {
  "\ 'hint': 'orange',
  "\ 'error': '#ff0000'
"\ }

" Load the colorscheme
colorscheme gruvbox
"autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
"autocmd vimenter * hi NonText guibg=NONE ctermbg=NONE

set rnu
set splitright
set splitbelow

set nocompatible

set nowrap
set tabstop=4
set softtabstop=4
set backspace=indent,eol,start

set autoindent
set smartindent
set copyindent
set number
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase

set smarttab

set hlsearch
set incsearch

set cursorline
"set wildmode=longest,list
"set cc=80

set clipboard=unnamedplus

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title

let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

" Treesitter config
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",     -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF

" Keybindings
let mapleader = " "
nnoremap <silent><leader>f :Files<CR>
nnoremap <silent><C-f> :Rg<CR>
nnoremap <silent><leader>t :NERDTreeToggle<CR>

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	    let g:airline_symbols = {}
	endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
