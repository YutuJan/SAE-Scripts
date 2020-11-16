"JANA2
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

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

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

map <F5> :set spell spelllang=en_us<CR>
map <F6> :set spell spelllang=el<CR>
map <F7> :set spell spelllang=ru<CR>
map <F8> :set spell!<CR>

"Plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
"Plug 'jremmen/vim-ripgrep'
"Plug 'tpope/vim-fugitive'
"Plug 'leafgarland/typescript-vim'
"Plug 'vim-utils/vim-man'
"Plug 'lyuts/vim-rtags'
"Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'ervandew/supertab'

call plug#end()

colorscheme gruvbox
set background=dark

"Settings and mappings for syntastic
"let g:syntastic_ruby_checkers=['flog', 'mri', 'jruby', 'ruby-link']
let g:syntastic_python_checkers=['flake8']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map ]l :lnext<CR>
map [l :lprevious<CR>
map <F3> :lopen<CR>
map <F4> :lclose<CR>

"Settings and mappings for undotree
nnoremap <F9> :UndotreeToggle<CR>

"Settings for nerdtree
"autocmd vimenter * NERDTree
map <F2> :NERDTreeToggle<CR>
