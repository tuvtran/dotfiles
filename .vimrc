"TU TRAN
"(tuvtran97@gmail.com)
"Vim Configuration file


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"FIRST AND FOREMOST"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype plugin on
syntax on

"Install vim-plug if it's not already installed.
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.github.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Enable vim-plug
call plug#begin('~/.vim/plugged')

"Plugins
"Aesthetic plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
"Various vim autoload scripts to make lives easier
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'jez/vim-superman'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'jdhao/better-escape.vim'
"Language pack for vim
Plug 'sheerun/vim-polyglot'
"Autocomplete for vim
Plug 'ycm-core/YouCompleteMe'
"Searching
Plug 'kien/ctrlp.vim'
"Search across codebase for vim
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mbbill/undotree'
Plug 'vimwiki/vimwiki'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGIN SETTINGS

"----------NERDTree shit------------
"Automatically open NERDTree when enter vim
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_new_tab=1
let g:nerdtree_tabs_autoclose=1
let g:nerdtree_tabs_focus_on_files=1
let NERDTreeIgnore = ['\.class$', '\.pyc$']
let NERDTreeShowHidden=1
"Show bookmarks on startup
let NERDTreeShowBookmarks=1
"Autoclose NERDTree if it's the only open window left
autocmd bufenter * if (winnr("$") == 1 && exists ("b:NERDTree") &&
    \ b:NERDTree.isTabTree()) | q | endif

"--------------SuperMan--------------
"Enter superman for manual page
nnoremap K :SuperMan <cword><CR>

"----------Syntastic shit------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"JS syntax highlighting in html/css
let g:javascript_enable_domhtmlcss = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = '▲'
let g:syntastic_python_checkers=['flake8', 'python3']

"----------Enable JSX syntax in .js files------------
let g:jsx_ext_required = 0

"----------vim-airline------------
" Color settings for it to display correctly
set lazyredraw
set t_Co=256
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"statusline appears all the time
set laststatus=2
"show PASTE if in paste mode
let g:airline_detect_paste=1
let g:airline_theme='simple'

"----------vim-easytags setting------------
"where to look for tags files
set tags=./tags;,~/.vimtags
"Sensible default
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

"----------tagbar settings------------
"open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
"uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

"-----------------Configure CtrlP------------------
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
" ignore some file types
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*.pyc
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"Map CtrlP buffer mode to Ctrl + B
nnoremap <C-b> :CtrlPBuffer<cr>

"---------------------Undotree----------------------
noremap <leader>u :UndotreeToggle<cr>

"---------------------AirlineTheme----------------------
let g:airline_theme='molokai'

"----------------YouCompleteMe----------------------
noremap <leader>] :YcmCompleter GoTo<cr>

"end of vim-plug -- required
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"GENERAL SETTINGS

set number
set ruler
set showcmd
set hls
set incsearch
set mouse=a
filetype plugin indent on

"Appearances
set background=dark
colo molokai

"Autocompletion menu in zsh with <C-d> in vim
set wildmenu
set wildmode=list:longest,full

"Set up tab spaces
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set backspace=2
set autoindent

"Show tab characters
set list
set listchars=tab:\|\

"See cursorline and cursorcolumn
set cursorline
"set cursorcolumn

"To speed up vim
set re=1
set ttyfast
set lazyredraw
set scrolljump=10

"Set folding method to indent
set foldmethod=indent
"Automatically open all folds
autocmd Bufread * normal zR

"Set up vim temp files directory
set swapfile
set undofile
if !isdirectory("$HOME/.vim_tmp")
    call mkdir("$HOME/.vim_tmp/backup_files", "p")
    call mkdir("$HOME/.vim_tmp/swap_files", "p")
    call mkdir("$HOME/.vim_tmp/undo_files", "p")
endif
set backupdir=~/.vim_tmp/backup_files//
set directory=~/.vim_tmp/swap_files//
set undodir=~/.vim_tmp/undo_files//

"backspace problem
set backspace=indent,eol,start

"Split right
set splitright
"Split below
set splitbelow

"set delay of ESC key
set timeoutlen=1000 ttimeoutlen=0

"Close buffer without closing window.
command! Bd :bp | :sp | :bn | :bd

"Copy into system (*) register
"set clipboard=unnamed
"Copy into system (+) register
"set clipboard=unnamedplus
"Copy into system (*, +) register
"set clipboard=unnamed,unnamedplus

"load .vimkeymap file
source ~/.vimkeymap
