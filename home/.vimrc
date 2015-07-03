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
    colorscheme gruvbox
    set background=dark " dark/light setting for gruvbox
    "colorscheme smyck
endif

if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors
    syntax on
endif

" basic settings
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