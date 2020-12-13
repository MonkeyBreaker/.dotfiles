" Vim color file
" Author: Julián
" Maintainer: MonkeyBreaker
" Notes: Another colorscheme

set background=dark
set t_Co=256

" Init
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="monkey"

" 24-bit color support
" set termguicolors
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" --------------------------------
" Editor settings
" --------------------------------
hi Normal              ctermfg=253         ctermbg=234         cterm=None
hi Cursor              ctermfg=253         ctermbg=57          cterm=None
hi CursorLine          ctermfg=253         ctermbg=57          cterm=None
hi LineNr              ctermfg=244         ctermbg=233         cterm=None
hi CursorLineNR        ctermfg=253         ctermbg=57          cterm=None

" -----------------
" - Number column -
" -----------------
hi Folded              ctermfg=132         ctermbg=None        cterm=Bold
hi FoldColumn          ctermfg=132         ctermbg=None        cterm=None

" -------------------------
" - Window/Tab delimiters -
" -------------------------
hi TabLine             ctermfg=245         ctermbg=239         cterm=None
hi TabLineFill         ctermfg=239         ctermbg=239         cterm=None
hi TabLineSel          ctermfg=104         ctermbg=236         cterm=Bold
hi VertSplit           ctermfg=239         ctermbg=239         cterm=None

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory           ctermfg=67          ctermbg=None        cterm=None
hi Search              ctermfg=125         ctermbg=None        cterm=Bold

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine          ctermfg=39          ctermbg=239         cterm=None
hi StatusLineNC        ctermfg=248         ctermbg=239         cterm=None
hi Question            ctermfg=15          ctermbg=234         cterm=None
" hi Title               ctermfg=none        ctermbg=none        cterm=none

" --------------
" - Visual aid -
" --------------
hi Visual              ctermfg=248         ctermbg=238         cterm=None
hi NonText             ctermfg=105         ctermbg=None        cterm=Bold
" hi MatchParen          ctermfg=None        ctermbg=237         cterm=None
" hi VisualNOS       ctermfg=none    ctermbg=none    cterm=none

hi Todo                ctermfg=162         ctermbg=None        cterm=Bold
hi Underline           ctermfg=147         ctermbg=None        cterm=Italic
hi Error               ctermfg=None        ctermbg=196         cterm=Bold
hi ErrorMsg            ctermfg=160         ctermbg=245         cterm=None
hi WarningMsg          ctermfg=226         ctermbg=245         cterm=None
hi Ignore              ctermfg=221         ctermbg=None        cterm=Bold
hi SpecialKey          ctermfg=70          ctermbg=None        cterm=None

" --------------------------------
" Variable types
" --------------------------------
hi Constant            ctermfg=76          ctermbg=None        cterm=None
" hi String              ctermfg=76          ctermbg=None        cterm=None
" hi StringDelimiter     ctermfg=76          ctermbg=None        cterm=None
" hi Character           ctermfg=none        ctermbg=none        cterm=none
" hi Number              ctermfg=none        ctermbg=none        cterm=none
" hi Boolean             ctermfg=none        ctermbg=none        cterm=none
" hi Float               ctermfg=none        ctermbg=none        cterm=none

hi Identifier          ctermfg=142         ctermbg=None        cterm=Bold
" hi Function            ctermfg=none        ctermbg=none        cterm=none

" --------------------------------
" Language constructs
" --------------------------------
hi Statement           ctermfg=172         ctermbg=None        cterm=Bold
hi Comment             ctermfg=244         ctermbg=None        cterm=None
" hi Conditional         ctermfg=none        ctermbg=none        cterm=none
" hi Repeat              ctermfg=none        ctermbg=none        cterm=none
" hi Label               ctermfg=none        ctermbg=none        cterm=none
" hi Operator            ctermfg=none        ctermbg=none        cterm=none
" hi Keyword             ctermfg=none        ctermbg=none        cterm=none
" hi Exception           ctermfg=none        ctermbg=none        cterm=none

hi Special             ctermfg=172         ctermbg=None        cterm=Bold
" hi SpecialChar         ctermfg=none        ctermbg=none        cterm=none
" hi Tag                 ctermfg=none        ctermbg=none        cterm=none
" hi Delimiter           ctermfg=none        ctermbg=none        cterm=none
" hi SpecialComment      ctermfg=none        ctermbg=none        cterm=none
" hi Debug               ctermfg=none        ctermbg=none        cterm=none

" ----------
" - C like -
" ----------
hi PreProc             ctermfg=141         ctermbg=None        cterm=Bold
" hi Include             ctermfg=none        ctermbg=none        cterm=none
" hi Define              ctermfg=none        ctermbg=none        cterm=none
" hi Macro               ctermfg=none        ctermbg=none        cterm=none
" hi PreCondit           ctermfg=none        ctermbg=none        cterm=none

hi Type                ctermfg=166         ctermbg=None        cterm=Bold
" hi StorageClass        ctermfg=none        ctermbg=none        cterm=none
" hi Structure           ctermfg=none        ctermbg=none        cterm=none
" hi Typedef             ctermfg=none        ctermbg=none        cterm=none

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu               ctermfg=62          ctermbg=233         cterm=None
hi PmenuSel            ctermfg=69          ctermbg=232         cterm=Bold
hi PmenuSbar           ctermfg=247         ctermbg=233         cterm=Bold
hi PmenuThumb          ctermfg=248         ctermbg=233         cterm=None

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd             ctermfg=black       ctermbg=green       cterm=None
hi DiffChange          ctermfg=black       ctermbg=yellow      cterm=None
hi DiffDelete          ctermfg=black       ctermbg=red         cterm=None
hi DiffText            ctermfg=blue        ctermbg=yellow      cterm=None

" --------------------------------
" Spelling
" --------------------------------
" hi SpellBad        ctermfg=none    ctermbg=none    cterm=none
" hi SpellCap        ctermfg=none    ctermbg=none    cterm=none
" hi SpellLocal      ctermfg=none    ctermbg=none    cterm=none
" hi SpellRare       ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Plugins
" --------------------------------
hi PreprocessorGrayout ctermfg=darkgray    ctermbg=234         cterm=None

" buftabline pluggin
hi BufTabLineCurrent   ctermfg=darkgreen    ctermbg=233        cterm=None
hi BufTabLineActive    ctermfg=darkyellow   ctermbg=237        cterm=Italic

" ALE
hi ALEError            ctermfg=196          ctermbg=236        cterm=Bold
