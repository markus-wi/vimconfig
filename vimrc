"vim settings
set number
set clipboard=unnamedplus

" Keep 4 lines top/bottom when scrolling
set scrolloff=25

" Search and Highlighting
set wrapscan
set magic
set showmatch
set hlsearch
set incsearch
set ignorecase smartcase
set enc=utf-8
set nofoldenable


" Backup stuff
set nobackup
set nowritebackup
set noswapfile

" Smart tabbing / wrapping / autoindenting
set nowrap
set equalalways
set undolevels=150
set nocompatible
set autoindent
set backspace=2
set tabstop=2

" colors
set t_Co=256
syntax on
set background=dark
colorscheme maui 
highlight Pmenu ctermbg=39 gui=bold
highlight MatchParen cterm=bold ctermbg=none ctermfg=darkblue

" ale settings
set nocompatible
filetype off
let &runtimepath.=',~/.vim/bundle/ale'
filetype plugin on
let g:ale_linters = {
\	'javascript': ['eslint'],
\}

" airline settings
set laststatus=2
"let g:airline_powerline_fonts=1

" ctrlp settings
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"Keymappings
nnoremap <silent> <F6> :NERDTreeToggle<CR>
nnoremap <silent> <C-l> :NERDTreeFind<CR>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>

set timeoutlen=1000 ttimeoutlen=0
