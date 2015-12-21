" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#infect()

" remap leader
let mapleader = ","

" make j and k go one line for wrapped lines
nmap j gj
nmap k gk

" use ctrl-c as esc
imap <C-c> <Esc>

" exit from visual mode
vnoremap v <Esc>

" set my color theme
if &t_Co >= 256 || has("gui_running")
    "colorscheme gruvbox
    "set background=dark " dark/light setting for gruvbox
    colorscheme smyck
endif

if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors
    syntax on
endif

" basic settings
filetype on       " try to detect file type
filetype plugin indent on " enable loading indent file by file type
set nowrap
set tabstop=4
set autoindent
set number
set shiftwidth=2  " number of spaces to use for autoindenting
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

nmap <silent> ,/ :nohlsearch<CR>  " clear search highlighting

" CtrlP plugin shortcut
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'

" Folding (default is {{{ to start and }}} to end)
set foldmethod=marker

" search for word selected in visual mode
vnoremap // y/<C-R>"<CR>

" shortcut for tasklist plugin
map <leader>td <Plug>TaskList

" settings for pyflakes
let g:pyflakes_use_quickfix = 0

" settings for pep8
let g:pep8_map='<leader>8'

" supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" NERD Tree
map <leader>n :NERDTreeToggle<CR>

" Add snippets direction to runtimepath
let &runtimepath.=",~/.vim/snippets"
let g:snips_author="Kris Kusano"
let g:snips_email="kris.kusano@toyota.com"
let g:snips_github="https://github.com/KrisKusano"
