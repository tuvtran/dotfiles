"TU TRAN
"(tuvtran97@gmail.com)
"Vim Configuration file


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"FIRST AND FOREMOST"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
set nocompatible

"Enable vim-plug
call plug#begin('~/.vim/plugged')

"Plugins
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'jez/vim-superman'
Plug 'christoomey/vim-tmux-navigator'
Plug 'flazz/vim-colorschemes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rking/ag.vim'
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGIN SETTINGS

"Automatically open NERDTree when enter vim
"autocmd vimenter * NERDTree

"----------NERDTree shit------------
map <C-n> :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_new_tab=1
let g:nerdtree_tabs_autoclose=1
let g:nerdtree_tabs_focus_on_files=1
let NERDTreeIgnore = ['\.class$', '\.pyc$']
let NERDTreeShowHidden=1

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
let g:airline#extensions#tabline#enabled = 1
"statusline appears all the time
set laststatus=2
"show PASTE if in paste mode
let g:airline_detect_paste=1

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

"----------ag silver searcher settings------------
let g:ag_working_path_mode="r"

"end of vim-plug -- required
call plug#end()
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
"syntax enable
syntax on
set background=dark
colo desert

"Autocompletion menu in zsh with <C-d> in vim
set wildmenu
set wildmode=full

"Set up tab spaces
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
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

"Set up vim temp files directory
set swapfile
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

"MAPPING HOTKEYS

"Enter superman for manual page
nnoremap K :SuperMan <cword><CR>

"Close file without saving
nnoremap <silent> <leader>q :q!<CR>

"Close file with saving
nnoremap <silent> <leader>wq :wq<CR>

"Close file all without saving
nnoremap <silent> <leader>qa :qa<CR>

"Write file
nnoremap <silent> <leader>w :w<CR>

"Write file all
nnoremap <silent> <leader>wa :wa<CR>

"No search highlighting
nnoremap <silent> <leader>s :noh<CR>

"Enter semi-colon at the end of the line
map <C-s> A;<ESC>

"Map jk to ESC
inoremap jk <ESC>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
