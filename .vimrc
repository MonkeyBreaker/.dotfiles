" vimrc file for monkey

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" abbreviations in insert mode only
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev @@ monkey
iabbrev plicense MIT
iabbrev psignature <esc>:r signature.txt<cr>i
iabbrev pccopy Copyright 2019 Monkey, all rights reserved.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Miscellanous vim configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" leader key : <leader>
:let mapleader = "-"

" local leader key : <localleader>
":let maplocalleader = "\\"

" enable displaying line numbers on files
set number

" when enabled displays lines as relative to the current line
" set relativenumber

" Fix default behaviour of backspace, see : https://vi.stackexchange.com/a/2163
set backspace=indent,eol,start

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPING STUFF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When using mapping always use the non-recursive method => *nore*

" NORMAL

" Move lines Up & Down
nnoremap <c-j> :m+1<cr>
nnoremap <c-k> :m-2<cr>

" Edit and sources .vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Surround current word with double quotes, to improve with toggle "
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" INSERT 

inoremap <c-k> <esc>ddi
" Toggle case of the word under the cursor
inoremap <c-u> <esc>lg~iwi

" VISUAL
" Surround current selection by ""
" Possibility with less strokes way is to : c"<c-r>""
vnoremap <leader>" xi""<esc>hp

