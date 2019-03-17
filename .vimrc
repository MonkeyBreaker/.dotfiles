""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMRC FILE FOR MONKEY
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable filetype detection, plugin and indentation enabled
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AUTOCOMMAND
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" za for using folding {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
	autocmd FileType vim let g:commentSyntax='" '
augroup END

augroup spelling
	autocmd!
	autocmd VimEnter * setlocal spelllang=en_gb
augroup END

" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VARIABLES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if 0 == exists("g:commentSyntax")
	let g:commentSyntax = ' '
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" abbreviations in insert mode only
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev @@ monkey
iabbrev plicense MIT
iabbrev psignature <esc>:r signature.txt<cr>i
iabbrev pccopy Copyright 2019 Monkey, all rights reserved.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Miscellaneous vim configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" leader key : <leader>
let mapleader = "-"

" local leader key : <localleader>
" let maplocalleader = "\\"

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" NORMAL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Move lines Up & Down
nnoremap <c-j> :m+1<cr>
nnoremap <c-k> :m-2<cr>

" Edit and sources .vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Surround current word with double quotes, to improve with toggle "
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" Quick correct orthography
nnoremap <c-l> 1z=<c-o>
nnoremap <F7> :setlocal spell!<cr>h 

" Comment current line
nnoremap <leader>c 0"=g:commentSyntax<c-m>P

" Go to next parathese, delete content and put in insert mode
nnoremap <leader>8 f(vi(c
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" INSERT 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" This is useful for training purpose only, to train your brain to use the correct shortcut
" inoremap <esc> <nop>
inoremap qp <esc>
inoremap <c-k> <esc>ddi

" Toggle case of the word under the cursor
inoremap <c-u> <esc>lg~iwi

" Quick correct orthography
inoremap <c-l> <c-g>u<Esc>1z=a<c-g>u

" Toggle spell check
inoremap <F7> <esc>l:setlocal spell!<cr>a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" VISUAL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Surround current selection by ""
" Possibility with less strokes way is to : c"<c-r>"" -> let you in insert mode, other option let you in normal mode
vnoremap <leader>" xi""<esc>hp

" Comment selected line(s) 
vnoremap <leader>c :s!^!<c-r>=g:commentSyntax<cr>!<cr>

