"===============================================================================
"======= Plug Plugin Manager ======= 
"===============================================================================
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'scrooloose/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()

"===============================================================================
"======= Settings ======= 
"===============================================================================
if has("gui_running")
    set guifont=DroidSansMonoForPowerline\ Nerd\ Font
endif
" Sets a line each at he current row and column
set cursorcolumn
set cursorline
" line numbering
set number
" tab settings, set to 4 spaces, and tabs to spaces.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" shows tabs and newlines.
set listchars=tab:▸\ ,eol:¬
set list
" Sets the update time of vim
set updatetime=250

"===============================================================================
"======= Colorscheme ======= 
"===============================================================================
colorscheme monokai
"===============================================================================
"======= Syntastic settings ======= 
"===============================================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"===============================================================================
"======= NERDCommenter settings ======= 
"===============================================================================
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
"===============================================================================
"======= Key maps ======= 
"===============================================================================
map <C-n> :NERDTreeToggle<CR>
"===============================================================================
"======= Key remaps ======= 
"===============================================================================
nnoremap <UP> <NOP>
nnoremap <LEFT> <NOP>
nnoremap <DOWN> <NOP>
nnoremap <RIGHT> <NOP>
