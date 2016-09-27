"===============================================================================
"======= Plug Plugin Manager ======= 
"===============================================================================
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
" Plug 'tpope/vim-fugitive' "git wrapper, check out if I ever need it.
call plug#end()

"===============================================================================
"======= Settings ======= 
"===============================================================================
if has("gui_running")
    set guifont=DroidSansMonoForPowerline\ Nerd\ Font
endif
set cursorcolumn
set cursorline
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set listchars=tab:▸\ ,eol:¬
set list

"===============================================================================
"======= Colorscheme ======= 
"===============================================================================
colorscheme monokai
