""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMRC FILE FOR MONKEY
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" enter the current millenium
" use vim in a modern way, not compatible with Vi
set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  PLUGINS                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pluggins config {{{1 "

" install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"" gen_tags
if executable("global")
    let g:gen_tags#gtags_default_map=1
endif

"" clang_complete
if has("win32unix")
    let g:clang_library_path='/usr/bin/cygclang-5.0.dll'
else
    let g:clang_library_path='/usr/lib/llvm-6.0/lib/'
endif
let g:clang_auto_user_options='compile_commands.json, path'

" Enable the snippets-support
let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'

"" vimtex
let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_method = 'okular'

"" lightline
let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'component': {
            \   'lineinfo': "%{line('.') . '/' . line('$')}",
            \ },
            \ }

"" buftabline
" only if there are at least two buffers
let g:buftabline_show=1

"" fzf
" This is the default extra key bindings
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }
" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

"" Poppy
let g:poppy_point_enable = 1

"" clang-format
let g:clang_format#detect_style_file=0
let g:clang_format#code_style = 'llvm'
let g:clang_format#style_options = {
            \ "IndentWidth" : 4,
            \ "BinPackArguments" : "true",
            \ "BinPackParameters" : "true",
            \ "BreakBeforeBinaryOperators" : "None",
            \ "BreakBeforeBraces" : "Linux",
            \ "BreakBeforeTernaryOperators" : "true",
            \ "ColumnLimit" : 80,
            \ "CompactNamespaces" : "false",
            \ "FixNamespaceComments" : "true",
            \ "IndentCaseLabels" : "false",
            \ "KeepEmptyLinesAtTheStartOfBlocks" : "false",
            \ "MaxEmptyLinesToKeep" : 1,
            \ "PointerAlignment" : "Left",
            \ "ReflowComments" : "true",
            \ "SpaceAfterCStyleCast" : "true",
            \ "SpaceBeforeAssignmentOperators" : "true",
            \ "SpaceInEmptyParentheses" : "false",
            \ "SpacesBeforeTrailingComments" : 2,
            \ "SpacesInAngles" : "false",
            \ "SpacesInCStyleCastParentheses" : "false",
            \ "SpacesInParentheses" : "false",
            \ "TabWidth" : 4,
            \ "UseTab" : "Never",
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "Cpp11" }
" Unknow parameters ... (Seems that not the last version is used)
" \ "IndentGotoLabels" : "true",
" \ "IndentPPDirectives" : "BeforeHash",
" \ "SpaceBeforeParens" : "NonEmptyParentheses",
" \ "SpaceBeforeInheritanceColon" : "true",
" \ "SpaceBeforeCpp11BracedList" : "true",
" \ "SpaceBeforeRangeBasedForLoopColon" : "false",
" \ "SpaceAfterLogicalNot" : "false",

"" tmux navigator
let g:tmux_navigator_no_mappings = 1

"" vim-snippets
" Comments are in GOOGLE style
let g:ultisnips_python_style = 0x4
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"" grayout.vim
" Set the compiler's working directory to use .grayout.conf's directory
let g:grayout_workingdir = 1
let g:grayout_confirm    = 0

" ale
let g:ale_c_parse_compile_commands = 1
let g:ale_lint_on_enter = 0 " don't run linter when enter program
let g:ale_lint_on_text_changed = 'never' " run linter only on saving

" lexima.vim
let g:lexima_enable_newline_rules = 1

" 1}}} "
" vim-plug {{{ "
" initialise vim-plug
call plug#begin('~/.vim/plugged')


" Features
Plug '~/.fzf'                                                            " fzf.vim
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'                                    " Vim Tmux Navigator
Plug 'SirVer/ultisnips'                                                  " UltiSnips
Plug 'honza/vim-snippets'                                                " snipMate & UltiSnip Snippets


" Language
Plug 'dense-analysis/ale'                                                " Asynchronous Lint Engine
Plug 'bfrg/vim-cpp-modern', { 'for': ['c', 'cpp']}                       " vim-cpp-modern: Enhanced C and C++ syntax highlighting
Plug 'dhruvasagar/vim-table-mode', { 'for': 'markdown' }                 " VIM Table Mode
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' } " VIM Python Mode
Plug 'lervag/vimtex', { 'for': 'tex' }                                   " vimtex
Plug 'xavierd/clang_complete', { 'for': ['c', 'cpp']}                    " clang_complete
if executable("clang-format")
    Plug 'rhysd/vim-clang-format'                                        " vim-clang-format
endif
Plug 'mphe/grayout.vim', { 'for': ['c', 'cpp'] }                         " allows to gray unused code


" tpope
Plug 'tpope/vim-surround'                                                " surround.vim
Plug 'tpope/vim-commentary'                                              " commentary.vim


" Small utilities
Plug 'junegunn/vim-easy-align'                                           " vim-easy-align
if executable("ctags") || executable("global")
    Plug 'jsfaint/gen_tags.vim'                                          " gen_tags.vim
endif
Plug 'AndrewRadev/splitjoin.vim'                                         " simplifies the transition between multiline and single-line
Plug 'cohama/lexima.vim'                                                 " Auto close parentheses and repeat by dot dot dot...


" Appearance
Plug 'ap/vim-buftabline'                                                 " Buftabline
Plug 'itchyny/lightline.vim'                                             " lightline.vim
Plug 'bounceme/poppy.vim'                                                " poppy.vim
Plug 'psliwka/vim-smoothie'                                              " Smooth scrolling for Vim done right


" Text objects
Plug 'kana/vim-textobj-user'                                             " Create your own text objects
Plug 'idbrii/textobj-word-column.vim'                                    " Column text-object


" Disable because I already created my colorscheme
" Plug 'flazz/vim-colorschemes'  " Vim colorschemes

" Initialize plugin system
call plug#end()
" }}} vim-plug "

" Enable filetype detection, plugin and indentation enabled
filetype plugin indent on
" enable syntax and plugins (for netrw)
syntax enable

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                AUTOCOMMAND                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" za for using folding {{{

let ftNoColorColum = ['vim', 'md', 'markdown', 'text', 'tex'. 'latex']
" this one is which you're most likely to use?
augroup ft_SetColorColumn
    autocmd!
    autocmd BufEnter * if index(ftNoColorColum, &ft) < 0 |
                \ call SetColorColumn(1) | else |
                \ call SetColorColumn(0) | endif
augroup end

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim setlocal commentstring=\"\ %s
augroup END

augroup spelling
    autocmd!
    autocmd VimEnter * setlocal spelllang=en_gb
    autocmd FileType txt, markdown, tex, latex setlocal spelllang+=fr
augroup END

" See https://gist.github.com/eduardocereto/3088543
" By default python-mode use python2, enable python3 by default
augroup filetype_python
    autocmd!
    autocmd FileType python setlocal commentstring=\#\ %s
    autocmd BufEnter,BufRead *.py let g:pymode_python = 'python3'
augroup END

" Use actual tab chars in Makefiles.
augroup filetype_make
    autocmd!
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
    autocmd FileType make setlocal commentstring=\#\ %s
augroup END

let ftCstyle = ['c', 'cpp']
augroup filetype_c
    autocmd!
    autocmd BufEnter * if index(ftCstyle, &ft) >= 0 |
                \ setlocal commentstring=\/\/\ %s | endif
augroup END

augroup filetype_sh
    autocmd!
    autocmd FileType sh setlocal commentstring=\#\ %s
augroup END

augroup filetype_markdown
    autocmd!
    autocmd FileType markdown let g:markdown_folding=1
    autocmd FileType markdown let g:markdown_enable_folding=1
    autocmd FileType markdown setlocal foldmethod=manual
    autocmd FileType markdown setlocal foldcolumn=0
    autocmd FileType markdown setlocal foldlevel=3
augroup END

let ftToIgnore = ['latex', 'tex']
augroup filetype_tex
    autocmd!
    autocmd BufEnter * if index(ftToIgnore, &ft) < 0 | 
                \ highlight MatchParen ctermfg=None ctermbg=cyan cterm=None | endif
    autocmd BufEnter * if index(ftToIgnore, &ft) >= 0 | 
                \ highlight MatchParen ctermfg=None ctermbg=237 cterm=None | endif
augroup END

" Performances issues if this patch is not present
if has('patch-8-1-0372')
augroup toggleRelativeLineNumbers
    autocmd!

    autocmd InsertEnter,BufLeave,WinLeave,FocusLost * nested
                \ if &l:number && empty(&buftype) |
                \ setlocal norelativenumber |
                \ endif
    autocmd InsertLeave,BufEnter,WinEnter,FocusGained * nested
                \ if &l:number && empty(&buftype) |
                \ setlocal relativenumber |
                \ endif
augroup END
endif

augroup grayout
    autocmd!
augroup END

augroup Poppy
    autocmd!
augroup END

" Move to the directory of the file in each buffer
augroup vimrc
    autocmd!
    autocmd BufEnter * silent! call SetProjectRoot()
augroup END

" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 VARIABLES                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     abbreviations in insert mode only                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

iabbrev @@ monkey
iabbrev plicense MIT
iabbrev psignature <esc>:r signature.txt<cr>i
iabbrev pccopy Copyright 2020 Monkey, all rights reserved.
" Insert date in format day/month/year
iabbrev @date@ <c-r>=strftime("%d/%m/%y")<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Basic settings                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{

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

" Status line custom configuration
set ls=2                  " Always show status line"
set statusline=%f         " Path to the file
set statusline+=\ -\      " Separator
set statusline+=FileType: " Label
set statusline+=%y        " Filetype of the file
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines

" Finding files
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" autocmd filetype_make statement basically tells vim some settings to use 
" whenever it opens a Makefile. Whereas the lines below it are setting the 
" defaults.
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.
set shiftround      " Shift to the next round tab stop.
set shiftwidth=4    " Indents will have a width of 4.

" indent when moving to the next line while writing code
set autoindent

" show the matching part of the pair for [] {} and ()
set showmatch

" Set color of the column when displayed to darkred
highlight ColorColumn ctermbg=darkred

" help adjust the default colours for better contrast
set background=dark

" 2 lines above/below cursor when scrolling
set scrolloff=2

" more natural split opening
set splitbelow
" more natural split opening
set splitright

" disable showing into which mode we are 
set noshowmode

" Change default colorscheme
:silent! colorscheme monkey

" Let's save undo info!
if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "", 0700)
endif

set undodir=~/.vim/undo
set undofile
set undolevels=1000
set undoreload=10000

" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               MAPPING STUFF                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" When using mapping always use the non-recursive method => *nore*

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   NORMAL                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{

" use same keys as insert mode for escape
" This disable to use the "p" register !
" allow to expand recusively others <esc> without the "nore"
nmap <silent> qp <Esc>

" Move lines Up & Down
nnoremap <silent> <c-j> :let @"=col('.')<cr>:m+1<cr>==@"lh
nnoremap <silent> <c-k> :let @"=col('.')<cr>:m-2<cr>==@"lh

" Edit and sources .vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Disable because now plugin surround.cim is used
" Surround current word with double quotes, to improve with toggle "
" nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" Quick correct orthography
nnoremap <c-l> 1z=<c-o>
nnoremap <F7> :setlocal spell!<cr>h 

" Disable because now plugin commentary is used
" Comment current line
" nnoremap <leader>c 0"=commentstring<c-m>P

" Go to next parathese, delete content and put in insert mode
nnoremap <leader>8 f(vi(c

" Add a new line after/before but stay in Normal mode
nnoremap <leader>o :<c-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <leader>O :<c-u>call append(line(".")-1, repeat([""], v:count1))<CR>

" goto midle of line
nnoremap gm :call cursor(0, len(getline('.'))/2)<CR>

" prevent jump after searching word under cursor with # and *, clear with Escape
" use 'n' or 'N' to jump to next/before 
nnoremap <silent> # :let @/ = '\<'.expand('<cword>').'\>'\|set hlsearch<CR>w?<CR>
nnoremap <silent> * :let @/ = '\<'.expand('<cword>').'\>'\|set hlsearch<CR>
nnoremap <silent> g# :let @/ = expand('<cword>')\|set hlsearch<CR>w?<CR>
nnoremap <silent> g* :let @/ = expand('<cword>')\|set hlsearch<CR>
nnoremap <silent> <leader><space> :noh<CR>

" unimpaired buffer mappings
nnoremap <silent> <leader>bp :bprevious!<CR>
nnoremap <silent> <leader>bn :bnext!<CR>
nnoremap <silent> <leader>Bp :bfirst!<CR>
nnoremap <silent> <leader>Bn :blast!<CR>

" use Ag/Rg for grep if available
if executable('rg') | set gp=rg\ -S\ --vimgrep\ --no-heading gfm=%f:%l:%c:%m,%f:%l%m,%f\ \ %l%m|
elseif executable('ag') | set gp=ag\ --nogroup\ --nocolor | endif

" grep for word under cursor
nnoremap <Leader># #:sil! gr! "\b<C-R><C-W>\b"<CR>:cw<CR>:redr!<CR>
nnoremap <Leader>* #:sil! gr! "\b<C-R><C-W>\b"<CR>:cw<CR>:redr!<CR>

" Poppy toggle
nnoremap <silent> <leader>tp :call clearmatches() \| let g:poppy = -get(g:,'poppy',-1) \|
      \ exe 'au! Poppy CursorMoved *' . (g:poppy > 0 ? ' call PoppyInit()' : '') <cr>

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Remap tmux panes navigation
nnoremap <silent> <c-w>h :TmuxNavigateLeft<cr>
nnoremap <silent> <c-w>j :TmuxNavigateDown<cr>
nnoremap <silent> <c-w>k :TmuxNavigateUp<cr>
nnoremap <silent> <c-w>l :TmuxNavigateRight<cr>
nnoremap <silent> <c-w>w :TmuxNavigatePrevious<cr>

" Grayout update manually
nnoremap <F5> :GrayoutUpdate<cr>

" ALE options
nnoremap <c-h> :ALEHover<cr>
nnoremap <silent> <leader>ne :ALENext<cr>
nnoremap <silent> <leader>Ne :ALEPrevious<cr>

" buffer manipulation
nnoremap <silent> <leader>bd :b#\|bd#<cr>

" Toggle current directory from root project directory to current file
" directory
nnoremap <silent> <leader>twd :call ToggleWorkingDirectory()<cr>

" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   INSERT                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{

" This is useful for training purpose only, to train your brain to use the correct shortcut
" inoremap <esc> <nop>
inoremap qp <esc>
" inoremap <c-k> <esc>ddi

" Toggle case of the word under the cursor
inoremap <c-u> <esc>lg~iwi

" Quick correct orthography
inoremap <c-l> <c-g>u<Esc>1z=a<c-g>u

" Toggle spell check
inoremap <F7> <esc>l:setlocal spell!<cr>i

" Fix Shift+Tab
inoremap <s-tab> <Esc><<i

" Toggle current directory from root project directory to current file
" directory
inoremap <silent> <F6> <esc>:call ToggleWorkingDirectory()<cr>a

" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   VISUAL                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{

" Disable because now plugin surround.cim is used
" Surround current selection by ""
" Possibility with less strokes way is to : c"<c-r>"" -> let you in insert mode, other option let you in normal mode
" vnoremap <leader>" xi""<esc>hp

" Disable because now plugin commentary is used
" Comment selected line(s) 
" vnoremap <leader>c :s!^!<c-r>=commentstring<cr>!<cr>

" move selected lines
vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv

" replace cursor to original place
vnoremap < <gv
vnoremap > >gv|

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  COMMAND                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{

" navigation in command line
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>

" Command line history
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 FUNCTIONS                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{
"
function! SetColorColumn(arg1)
    " Set color column
    if a:arg1
        call matchadd('ColorColumn', '\%82v', 100)
    else
        call clearmatches()
        setlocal colorcolumn=0
    endif
endfunction

" http://inlehmansterms.net/2014/09/04/sane-vim-working-directories/
" set working directory to git project root
" or directory of current file if not git project
function! SetProjectRoot()
  " default to the current file's directory
  lcd %:p:h
  let git_dir = system("git rev-parse --show-toplevel")
  " See if the command output starts with 'fatal' (if it does, not in a git repo)
  let is_not_git_dir = matchstr(git_dir, '^fatal:.*')
  " if git project, change local directory to git project root
  if empty(is_not_git_dir)
    lcd `=git_dir`
  endif

  return getcwd()
endfunction

function! ToggleWorkingDirectory()
    let cwd = string(getcwd())

    " instead of using substitute you could use
    " Compare using the match (=~) operation instead of equal (==)
    let git_dir = string(substitute(system("git rev-parse --show-toplevel"), '\n$', '', ''))
    " See if the command output starts with 'fatal' (if it does, not in a git repo)
    let is_not_git_dir = matchstr(git_dir, '^fatal:.*')

    if empty(is_not_git_dir) && !(cwd ==# git_dir)
        call SetProjectRoot()
    else
        lcd %:p:h
    endif

    " print current directory
    echo getcwd()
endfunction

" }}}
