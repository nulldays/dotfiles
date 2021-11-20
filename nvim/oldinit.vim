" ***********************
"
"	My .vimrc
"
" ***********************

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Install Plugins
call plug#begin('~/.config/nvim/plugged')
    "Basics
    Plug 'junegunn/vim-plug'
    Plug 'junegunn/limelight.vim'

    "Costumization
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "File manager
    Plug 'scrooloose/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ryanoasis/vim-devicons'

call plug#end()

"Basic Configs 
filetype plugin indent on
set encoding=UTF-8
set ignorecase smartcase
set lazyredraw
set wildmenu
set cursorline
set number
set linebreak
set listchars+=precedes:<,extends:>
set nowrap
set noshowcmd
set splitbelow splitright
set expandtab 
set tabstop=4
set shiftwidth=4

" Colorscheme
syntax enable
colorscheme dracula
set background=dark
set termguicolors


"
" Plugins
"

"" Airline Config
let g:airline_theme='dracula'
let g:airline_powerline_fonts=1

" NERDtree config
map <C-n> :NERDTreeToggle<CR>

" Goyo config
map <leader><leader>w :Goyo<CR>



