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
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
if has('nvim')
    Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
    Plug 'zchee/deoplete-jedi'
else
    Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
endif
call plug#end()

"===============================================================================
"======= Settings ======= 
"===============================================================================
if has("gui_running")
    set guifont=DroidSansMonoForPowerline\ Nerd\ Font
endif
if has('nvim')
    let g:deoplete#enable_at_startup = 1
endif
" Sets a line each at he current row and column
set cursorcolumn
set cursorline
" line numbering
set relativenumber
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
" Makes it so there will always, if possible, be, at least, 5 lines above or
" below the cursor
set scrolloff=5

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
"======= Emmet-vim Settings ======= 
"===============================================================================
let g:user_emmet_leader_key='<C-Z>'
"===============================================================================
"======= Key maps ======= 
"===============================================================================
map <C-n> :NERDTreeToggle<CR>
"===============================================================================
"======= Key remaps ======= 
"===============================================================================
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap <leader>n :call NumberToggle()<cr>
"===============================================================================
"======= Functions ======= 
"===============================================================================
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set nonumber
        set relativenumber
    endif
endfunc
