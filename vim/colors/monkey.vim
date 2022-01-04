" Vim color file
" Author: Julián
" Maintainer: MonkeyBreaker
" Notes: Another colorscheme

" Based on github.com/junegunn/seoul256.vim
" Copyright (c) 2017 Junegunn Choi
" Copyright (c) 2021 Burella Pérez Julián
"
" MIT License
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
" LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
" OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
" WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

let s:rgb_map =
        \{  0: '#000000',   1: '#800000',   2: '#008000',
        \   3: '#808000',   4: '#000080',   5: '#800080',
        \   6: '#000808',   7: '#c0c0c0',   8: '#808080',
        \   9: '#ff0000',  10: '#00ff00',  11: '#ffff00',
        \  12: '#0000ff',  13: '#ff00ff',  14: '#00ffff', 15: '#ffffff',
        \  16: '#000000',  17: '#00005f',  18: '#000087',
        \  19: '#0000af',  20: '#0000d7',  21: '#0000ff',
        \  22: '#005f00',  23: '#005f5f',  24: '#005f87',
        \  25: '#005faf',  26: '#005fd7',  27: '#005fff',
        \  28: '#008700',  29: '#00875f',  30: '#008787',
        \  31: '#0087af',  32: '#0087d7',  33: '#0087ff',
        \  34: '#00af00',  35: '#00af5f',  36: '#00af87',
        \  37: '#00afaf',  38: '#00afd7',  39: '#00afff',
        \  40: '#00d700',  41: '#00d75f',  42: '#00d787',
        \  43: '#00d7af',  44: '#00d7d7',  45: '#00d7ff',
        \  46: '#00ff00',  47: '#00ff5f',  48: '#00ff87',
        \  49: '#00ffaf',  50: '#00ffd7',  51: '#00ffff',
        \  52: '#5f0000',  53: '#5f005f',  54: '#5f0087',
        \  55: '#5f00af',  56: '#5f00d7',  57: '#5f00ff',
        \  58: '#5f5f00',  59: '#5f5f5f',  60: '#5f5f87',
        \  61: '#5f5faf',  62: '#5f5fd7',  63: '#5f5fff',
        \  64: '#5f8700',  65: '#5f875f',  66: '#5f8787',
        \  67: '#5f87af',  68: '#5f87d7',  69: '#5f87ff',
        \  70: '#5faf00',  71: '#5faf5f',  72: '#5faf87',
        \  73: '#5fafaf',  74: '#5fafd7',  75: '#5fafff',
        \  76: '#5fd700',  77: '#5fd75f',  78: '#5fd787',
        \  79: '#5fd7af',  80: '#5fd7d7',  81: '#5fd7ff',
        \  82: '#5fff00',  83: '#5fff5f',  84: '#5fff87',
        \  85: '#5fffaf',  86: '#5fffd7',  87: '#5fffff',
        \  88: '#870000',  89: '#87005f',  90: '#870087',
        \  91: '#8700af',  92: '#8700d7',  93: '#8700ff',
        \  94: '#875f00',  95: '#875f5f',  96: '#875f87',
        \  97: '#875faf',  98: '#875fd7',  99: '#875fff',
        \ 100: '#878700', 101: '#87875f', 102: '#878787',
        \ 103: '#8787af', 104: '#8787d7', 105: '#8787ff',
        \ 106: '#87af00', 107: '#87af5f', 108: '#87af87',
        \ 109: '#87afaf', 110: '#87afd7', 111: '#87afff',
        \ 112: '#87d700', 113: '#87d75f', 114: '#87d787',
        \ 115: '#87d7af', 116: '#87d7d7', 117: '#87d7ff',
        \ 118: '#87ff00', 119: '#87ff5f', 120: '#87ff87',
        \ 121: '#87ffaf', 122: '#87ffd7', 123: '#87ffff',
        \ 124: '#af0000', 125: '#af005f', 126: '#af0087',
        \ 127: '#af00af', 128: '#af00d7', 129: '#af00ff',
        \ 130: '#af5f00', 131: '#af5f5f', 132: '#af5f87',
        \ 133: '#af5faf', 134: '#af5fd7', 135: '#af5fff',
        \ 136: '#af8700', 137: '#af875f', 138: '#af8787',
        \ 139: '#af87af', 140: '#af87d7', 141: '#af87ff',
        \ 142: '#afaf00', 143: '#afaf5f', 144: '#afaf87',
        \ 145: '#afafaf', 146: '#afafd7', 147: '#afafff',
        \ 148: '#afd700', 149: '#afd75f', 150: '#afd787',
        \ 151: '#afd7af', 152: '#afd7d7', 153: '#afd7ff',
        \ 154: '#afff00', 155: '#afff5f', 156: '#afff87',
        \ 157: '#afffaf', 158: '#afffd7', 159: '#afffff',
        \ 160: '#d70000', 161: '#d7005f', 162: '#d70087',
        \ 163: '#d700af', 164: '#d700d7', 165: '#d700ff',
        \ 166: '#d75f00', 167: '#d75f5f', 168: '#d75f87',
        \ 169: '#d75faf', 170: '#d75fd7', 171: '#d75fff',
        \ 172: '#d78700', 173: '#d7875f', 174: '#d78787',
        \ 175: '#d787af', 176: '#d787d7', 177: '#d787ff',
        \ 178: '#d7af00', 179: '#d7af5f', 180: '#d7af87',
        \ 181: '#d7afaf', 182: '#d7afd7', 183: '#d7afff',
        \ 184: '#d7d700', 185: '#d7d75f', 186: '#d7d787',
        \ 187: '#d7d7af', 188: '#d7d7d7', 189: '#d7d7ff',
        \ 190: '#d7ff00', 191: '#d7ff5f', 192: '#d7ff87',
        \ 193: '#d7ffaf', 194: '#d7ffd7', 195: '#d7ffff',
        \ 196: '#ff0000', 197: '#ff005f', 198: '#ff0087',
        \ 199: '#ff00af', 200: '#ff00d7', 201: '#ff00ff',
        \ 202: '#ff5f00', 203: '#ff5f5f', 204: '#ff5f87',
        \ 205: '#ff5faf', 206: '#ff5fd7', 207: '#ff5fff',
        \ 208: '#ff8700', 209: '#ff875f', 210: '#ff8787',
        \ 211: '#ff87af', 212: '#ff87d7', 213: '#ff87ff',
        \ 214: '#ffaf00', 215: '#ffaf5f', 216: '#ffaf87',
        \ 217: '#ffafaf', 218: '#ffafd7', 219: '#ffafff',
        \ 220: '#ffd700', 221: '#ffd75f', 222: '#ffd787',
        \ 223: '#ffd7af', 224: '#ffd7d7', 225: '#ffd7ff',
        \ 226: '#ffff00', 227: '#ffff5f', 228: '#ffff87',
        \ 229: '#ffffaf', 230: '#ffffd7', 231: '#ffffff',
        \ 232: '#080808', 233: '#121212', 234: '#1c1c1c',
        \ 235: '#262626', 236: '#303030', 237: '#3a3a3a',
        \ 238: '#444444', 239: '#4e4e4e', 240: '#585858',
        \ 241: '#626262', 242: '#6c6c6c', 243: '#767676',
        \ 244: '#808080', 245: '#8a8a8a', 246: '#949494',
        \ 247: '#9e9e9e', 248: '#a8a8a8', 249: '#b2b2b2',
        \ 250: '#bcbcbc', 251: '#c6c6c6', 252: '#d0d0d0',
        \ 253: '#dadada', 254: '#e4e4e4', 255: '#eeeeee' }


set background=dark
set t_Co=256

" Init
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="monkey"

let s:style_idx = 0
function! s:hi(group, fg, bg, rendering)
  let fg = a:fg[s:style_idx]
  let bg = a:bg[s:style_idx]

  if !empty(fg)
    exe 'highlight ' . a:group . ' ctermfg=' fg . ' guifg=' . get(s:rgb_map, fg, fg) . ' cterm=' . a:rendering
  endif
  if !empty(bg)
    exe 'highlight ' . a:group . ' ctermbg=' bg . ' guibg=' . get(s:rgb_map, bg, bg) . ' cterm=' . a:rendering
  endif
endfunction

" 24-bit color support
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let s:bg_color = 234
" --------------------------------
" Editor settings
" --------------------------------
call s:hi('Normal',       [253, ''], [s:bg_color,   ''], 'None')
call s:hi('Cursor',       [253, ''], [s:bg_color,   ''], 'None')
call s:hi('CursorLine',   ['',  ''], [s:bg_color+1, ''], 'None')
call s:hi('LineNr',       [244, ''], [s:bg_color,   ''], 'None')
call s:hi('CursorLineNr', [253, ''], [s:bg_color, ''], 'None')

" -----------------
" - Number column -
" -----------------
call s:hi('Folded',     [132, ''], [s:bg_color, ''], 'Bold')
call s:hi('FoldColumn', [132, ''], [s:bg_color, ''], 'None')
call s:hi('SignColumn', ['',  ''], [s:bg_color, ''], 'Bold')

" -------------------------
" - Window/Tab delimiters -
" -------------------------
call s:hi('TabLine',     [245, ''], [239, ''], 'None')
call s:hi('TabLineFill', [239, ''], [239, ''], 'None')
call s:hi('TabLineSel',  [104, ''], [236, ''], 'Bold')
call s:hi('VertSplit',   [239, ''], [239, ''], 'None')

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
call s:hi('Directory', [67, ''],  ['', ''], 'None')
call s:hi('Search',    [39, ''], [s:bg_color, ''], 'Bold') " orig 135

" -----------------
" - Prompt/Status -
" -----------------
call s:hi('StatusLine',   [39,  ''], [239,        ''], 'None')
call s:hi('StatusLineNC', [248, ''], [239,        ''], 'None')
call s:hi('Question',     [15,  ''], [s:bg_color, ''], 'None')
call s:hi('Title',        [34,  ''], [s:bg_color, ''], 'None')

" --------------
" - Visual aid -
" --------------
call s:hi('Visual',  [248, ''], [238, ''], 'None')
call s:hi('NonText', [105, ''], ['',  ''], 'Bold')
" hi MatchParen          ctermfg=None        ctermbg=237         cterm=None
" hi VisualNOS       ctermfg=none    ctermbg=none    cterm=none

call s:hi('Todo',        [197, ''], [s:bg_color, ''], 'Bold')
call s:hi('Underline',   [147, ''], ['',         ''], 'Italic')
call s:hi('Error',       [251, ''], [196,        ''], 'Bold')
call s:hi('ErrorMsg',    [160, ''], [245,        ''], 'None')
call s:hi('WarningMsg',  [226, ''], [245,        ''], 'None')
call s:hi('Ignore',      [221, ''], ['',         ''], 'Bold')
call s:hi('SpecialKey',  [70,  ''], ['',         ''], 'None')
call s:hi('ColorColumn', ['',  ''], [9,          ''], 'None')

" --------------------------------
" Variable types
" --------------------------------
call s:hi('Constant', [76,  ''], ['',  ''], 'None')
" hi String              ctermfg=76          ctermbg=None        cterm=None
" hi StringDelimiter     ctermfg=76          ctermbg=None        cterm=None
" hi Character           ctermfg=none        ctermbg=none        cterm=none
" hi Number              ctermfg=none        ctermbg=none        cterm=none
" hi Boolean             ctermfg=none        ctermbg=none        cterm=none
" hi Float               ctermfg=none        ctermbg=none        cterm=none

call s:hi('Identifier', [142,  ''], ['',  ''], 'Bold')
" hi Function            ctermfg=none        ctermbg=none        cterm=none

" --------------------------------
" Language constructs
" --------------------------------
call s:hi('Statement', [172, ''], ['', ''], 'Bold')
call s:hi('Comment',   [244, ''], ['', ''], 'None')
" hi Conditional         ctermfg=none        ctermbg=none        cterm=none
" hi Repeat              ctermfg=none        ctermbg=none        cterm=none
" hi Label               ctermfg=none        ctermbg=none        cterm=none
" hi Operator            ctermfg=none        ctermbg=none        cterm=none
" hi Keyword             ctermfg=none        ctermbg=none        cterm=none
" hi Exception           ctermfg=none        ctermbg=none        cterm=none

call s:hi('Special', [172, ''], ['', ''], 'Bold')
" hi SpecialChar         ctermfg=none        ctermbg=none        cterm=none
" hi Tag                 ctermfg=none        ctermbg=none        cterm=none
" hi Delimiter           ctermfg=none        ctermbg=none        cterm=none
" hi SpecialComment      ctermfg=none        ctermbg=none        cterm=none
" hi Debug               ctermfg=none        ctermbg=none        cterm=none

" ----------
" - C like -
" ----------
call s:hi('PreProc', [141, ''], ['', ''], 'Bold')
" hi Include             ctermfg=none        ctermbg=none        cterm=none
" hi Define              ctermfg=none        ctermbg=none        cterm=none
" hi Macro               ctermfg=none        ctermbg=none        cterm=none
" hi PreCondit           ctermfg=none        ctermbg=none        cterm=none

call s:hi('Type', [166, ''], ['', ''], 'Bold')
" hi StorageClass        ctermfg=none        ctermbg=none        cterm=none
" hi Structure           ctermfg=none        ctermbg=none        cterm=none
" hi Typedef             ctermfg=none        ctermbg=none        cterm=none

" --------------------------------
" Completion menu
" --------------------------------
call s:hi('Pmenu',      [62,  ''], [233, ''], 'None')
call s:hi('PmenuSel',   [69,  ''], [232, ''], 'Bold')
call s:hi('PmenuSbar',  [247, ''], [233, ''], 'Bold')
call s:hi('PmenuThumb', [248, ''], [233, ''], 'None')

" --------------------------------
" Diff
" --------------------------------
call s:hi('DiffAdd',    [0, ''], [22,  ''], 'None')
call s:hi('DiffChange', [0, ''], [s:bg_color, ''], 'None')
call s:hi('DiffDelete', [0, ''], [124,  ''], 'None')
call s:hi('DiffText',   [0, ''], [24, ''], 'None')

" --------------------------------
" Spelling
" --------------------------------
" hi SpellBad        ctermfg=none    ctermbg=none    cterm=none
" hi SpellCap        ctermfg=none    ctermbg=none    cterm=none
" hi SpellLocal      ctermfg=none    ctermbg=none    cterm=none
" hi SpellRare       ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Markdown
" --------------------------------
call s:hi('markdownH1', [166, ''], ['', ''], 'Bold')

" --------------------------------
" Plugins
" --------------------------------
call s:hi('PreprocessorGrayout',   [8, ''], [s:bg_color, ''], 'None')

" buftabline pluggin
call s:hi('BufTabLineCurrent', [40,  ''], [233, ''], 'None')
call s:hi('BufTabLineActive',  [184, ''], [237, ''], 'Italic')

" ALE
call s:hi('ALEError',     [196, ''], ['',  ''], 'Underline')
call s:hi('ALEErrorSign', [196, ''], ['', ''], 'Bold')

" ALE
call s:hi('LspErrorHighlight',     [196, ''], ['',  ''], 'Underline')
call s:hi('LspErrorText',     [196, ''], ['',  ''], 'Underline')

" TEX
call s:hi('texCmdEnv', [172, ''], ['', ''], 'Bold')
