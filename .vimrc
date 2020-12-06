"Author: Sirinian Aram Emmanouil
"lel 2

syntax on

set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nocompatible
filetype off


"=============================================================================
"Setting a column
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
"=============================================================================

"=============================================================================
"These lines make gruvbox and spellchecker work somehow
augroup SpellUnderline
  autocmd!
  autocmd ColorScheme *
    \ highlight SpellBad
    \   cterm=Underline
  autocmd ColorScheme *
    \ highlight SpellCap
    \   cterm=Underline
  autocmd ColorScheme *
    \ highlight SpellLocal
    \   cterm=Underline
  autocmd ColorScheme *
    \ highlight SpellRare
    \   cterm=Underline
  augroup END
"=============================================================================

"=============================================================================
"Mappings for spellchecker
map <F5> :set spell spelllang=en_us<CR>
map <F6> :set spell spelllang=el<CR>
map <F7> :set spell spelllang=ru<CR>
map <F8> :set spell!<CR>
"=============================================================================

"=============================================================================
"Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
Plugin 'jez/vim-superman'
"Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ycm-core/YouCompleteMe'
"TODO add syntax plugins

"Plug 'jremmen/vim-ripgrep'
"Plug 'tpope/vim-fugitive'
"Plug 'leafgarland/typescript-vim'
"Plug 'vim-utils/vim-man'
"Plug 'lyuts/vim-rtags'
"Plug 'kien/ctrlp.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'mbbill/undotree'

call vundle#end()
filetype plugin indent on
"=============================================================================

"=============================================================================
"Setting the colorscheme
colorscheme gruvbox
set background=dark
"=============================================================================

"=============================================================================
"Recommended settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"=============================================================================
"map ]l :lnext<CR>
"map [l :lprevious<CR>
"map <F3> :lopen<CR>
"map <F4> :lclose<CR>

"Settings and mappings for undotree
"nnoremap <F9> :UndotreeToggle<CR>

"=============================================================================
"Settings for nerdtree
"open a NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree

map <F2> :NERDTreeToggle<CR>
"=============================================================================
