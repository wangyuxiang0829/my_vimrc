cal plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
cal plug#end()

syntax enable " start using syntax highlighting
colorscheme gruvbox " load color scheme
filetype indent on " enable loading the indent file for specific file types
filetype plugin on " enable loading the plugin files for specific file types

set background=dark " dark or light the background color brightness
set ruler " show cursor position below each window
set cursorline " highlight the screen line of the cursor
set cursorcolumn " highlight the screen column of the cursor
set wildmenu " command-line completion shows a list of matches
set scrolloff=5 " number of screen lines to show around the cursor
set hlsearch " highlight all matches for the last used search pattern
set incsearch " show match for partly typed search command
set ignorecase " ignore case when using a search pattern
set smartcase " override 'ignorecase' when pattern has upper case characters
set number " show the line number for each line
set autoindent " automatically set the indent of a new line
set smartindent " do clever autoindenting
set tabstop=4 " number of spaces a <Tab> in the text stands for
set shiftwidth=4 " number of spaces used for each step of (auto) indent
set smarttab " a <Tab> in an indent inserts 'shiftwidth' spaces
set softtabstop=4 " if non-zero, number of spaces to insert for a <Tab>
set expandtab " expand <Tab> to spaces in Insert mode
set nocompatible " behave not Vi compatible
set showmode " display the current mode in the status line
set magic " change the way backslashes are used in search patterns
set encoding=utf-8 " character encoding used in Vim
set backspace=start,indent,eol " specifies what <BS>, CTRL-W, etc. can do in Insert mode
set showcmd " show (partial) command keys in the status line
set laststatus=2 " always display the status line, even if only one window displayed
set foldmethod=indent " folding type: "manual", "indent", "expr", "marker" or "syntax"
set history=1000 " how many command lines are remembered 

" <C-p> and <C-n> can also filter historical commands
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" Clear all hightlighted mathes and then redraw the screen
nnoremap <silent> <C-l> :noh<CR><C-l>
