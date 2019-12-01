" ==============================Load Plugin================================= "
cal plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
cal plug#end()

" ==============================General Settings============================ "
syntax enable " start using syntax highlighting
colorscheme gruvbox " load color scheme
filetype indent on " enable loading the indent file for specific file types
filetype plugin on " enable loading the plugin files for specific file types

" ==============================Set Options================================= "
set ruler " show cursor position below each window
set cursorline " highlight the screen line of the cursor
set cursorcolumn " highlight the screen column of the cursor
set wildmenu " command-line completion shows a list of matches
set hlsearch " highlight all matches for the last used search pattern
set incsearch " show match for partly typed search command
set ignorecase " ignore case when using a search pattern
set smartcase " override 'ignorecase' when pattern has upper case characters
set number " show the line number for each line
set autoindent " automatically set the indent of a new line
set smartindent " do clever autoindenting
set smarttab " a <Tab> in an indent inserts 'shiftwidth' spaces
set expandtab " expand <Tab> to spaces in Insert mode
set nocompatible " behave not Vi compatible
set showmode " display the current mode in the status line
set magic " change the way backslashes are used in search patterns
set showcmd " show (partial) command keys in the status line

let &laststatus = 2 " always display the status line, even if only one window displayed
let &history = 1000 " how many command lines are remembered 
let &background = 'dark' " dark or light the background color brightness
let &scrolloff = 5 " number of screen lines to show around the cursor
let &tabstop = 4 " number of spaces a <Tab> in the text stands for
let &shiftwidth = 4 " number of spaces used for each step of (auto) indent
let &softtabstop = 4 " if non-zero, number of spaces to insert for a <Tab>
let &encoding = 'utf-8' " character encoding used in Vim
let &backspace = 'start, indent, eol' " specifies what <BS>, CTRL-W, etc. can do in Insert mode

" ==============================Maps======================================== "
" Command line editing
cnoremap <C-l> <Right>
cnoremap <C-h> <Left>
" <C-p> and <C-n> can also filter historical commands
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" Clear all hightlighted mathes and then redraw the screen
nnoremap <silent> <C-l> :<C-u>noh<CR><C-l>
" Change the vim's built in * and # behavior in visual mode to search the selected
" text in very nomagic mode which means all regual expressions will be invalid
xnoremap * :<C-u>call <SID>VisualStarSearch('/')<CR>/<C-r>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VisualStarSearch('?')<CR>?<C-r>=@/<CR><CR>

" ==============================Functions=================================== "
function! s:VisualStarSearch(cmdtype)
" store the previous content in register s in local variable temp
    let l:temp = @s
" copy the selected text into register s
    normal! gv"sy
" escape some sepcial characters and then set the search mode register /
    let @/ = '\V' . substitute(escape(@s, a:cmdtype . '\'), '\n', '\\n', 'g')
" restore the previous content of register s
    let @s = temp
endfunction
