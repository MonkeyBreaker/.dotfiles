# VIM configuration files and plugins used

## Mapping

leader key : `-`

### Normal mode

| Mapping            | Effect                                     |
|--------------------|--------------------------------------------|
| qp                 | As pressing `esc`                          |
| `<F7>`             | Toggle spell                               |
| Ctrl + J           | Move line down                             |
| Ctrl + K           | Move line up                               |
| Ctrl + L           | Quick orthography fix                      |
| `<leader>`ev       | Edit .vimrc                                |
| `<leader>`sv       | Source .vimrc                              |
| `<leader>`8        | Replace the content of the next parathesis |
| `*, #, g*, g#`     | Disable jump (use n/N), highlight word     |
| `<leader><espace>` | Disable highlight                          |
| `[b, ]b`           | Jump to previous/next buffer               |
| `[B, ]B`           | Jump to first/last buffer                  |
| `<leader>*,#`      | Grep word under cursor                     |

### Insert mode

| Mapping  | Effect                 |
|----------|------------------------|
| `<F7>`   | Toggle spell           |
| qp       | Enter normal mode      |
| Ctrl + U | Toggle word case       |
| Ctrl + L | Quick orthography fix  |
| Ctrl + J | snippet jump forward   |
| Ctrl + K | snippet jump backward  |
| `<tab>`  | snippet expand trigger |

### Visual mode

| Mapping       | Effect                                      |
|---------------|---------------------------------------------|
| `<leader>`tmm | Tableize selected lines                     |
| gc            | Comment or uncomment the highlighted lines. |

### Command mode

| Mapping  | Effect                                    |
|----------|-------------------------------------------|
| Ctrl + a | Same effect as home                       |
| Ctrl + e | Same effect as end                        |
| Ctrl + b | Same effect as pressing `h`               |
| Ctrl + f | Same effect as pressing `l`               |
| Ctrl + p | Navigate in history command for older one |
| Ctrl + n | Navigate in history command for newer one |

## Autocommand

* Enable spell `gb` when starting vim

## Pluggins

### [VIM Table Mode](https://github.com/dhruvasagar/vim-table-mode)

Currently this mode is only available when editing markdown files. This
restriction can be easily changed in the `.vimrc`.

#### Normal mode

| Mapping       | Effect                      |
|---------------|-----------------------------|
| `<leader>`tm  | Toggle Table Mode           |
| `<leader>`tdd | Delete Row in Table mode    |
| `<leader>`tdc | Delete Column in Table mode |

### [VIM Python Mode](https://github.com/python-mode/python-mode)

A Python IDE for Vim, read help (:help pymode) or see the
[wiki](https://github.com/python-mode/python-mode/wiki) for more information.

### [surround.vim](https://github.com/tpope/vim-surround)

Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML
tags, and more. The plugin provides mappings to easily delete, change and add
such surroundings in pairs.

#### Normal mode

| Mapping                   | Effect                                      |
|---------------------------|---------------------------------------------|
| cs`<old><new>`            | Change surroundings from `<old>` to `<new>` |
| ds`<old>`                 | Delete surroundings `<old>`                 |
| ys`<motion><new>`         | You surround with `<motion>` with `<new>`   |
| ySS`<new>`                | You surround up & down with `<new>`         |
| ys`<motion>`f`<func><cr>` | You surround `<motion>` with func()         |

### [commentary.vim](https://github.com/tpope/vim-commentary)

Comment stuff out.

#### Normal mode

| Mapping      | Effect                                     |
|--------------|--------------------------------------------|
| gcc          | Comment or uncomment [count] lines.        |
| gc`<motion>` | Comment or uncomment lines with `<motion>` |


### [UltiSnips](https://github.com/SirVer/ultisnips)

UltiSnips is the ultimate solution for snippets in Vim. It has tons of features
and is very fast.

#### [vim-snippets](https://github.com/honza/vim-snippets)

This repository contains snippets files for various programming languages.
Snippets are separated from the engine.

### [vimtex](https://github.com/lervag/vimtex)

vimtex is a Vim plugin that provides support for writing LaTeX documents.

| Mapping | Effect                          |
|---------|---------------------------------|
| \ll     | Enable/Disable auto compilation |

### [vim-cpp-modern](https://github.com/bfrg/vim-cpp-modern)

Keyword and regex-based syntax highlighting for C and C++11/14/17/20 in Vim.

### [clang_complete](https://github.com/xavierd/clang_complete)

This plugin uses clang for accurately completing C and C++ code.

#### Insert mode

| Mapping      | Effect                                      |
|--------------|---------------------------------------------|
| `<c-x><c-o>` | Use omicompletion to show a completion list |
| `<c-]>`      | Jump to definition                          |
| `<c-t>`      | Jumps back after a jump to definition       |

### [gen_tags.vim](https://github.com/jsfaint/gen_tags.vim)

Async plugin for vim and neovim to ease the use of ctags/gtags.

#### Difference between ctags and gtags

  GNU global(aka gtags) is more powerful than ctags, which support definition,
  reference, calling, called, include, string and etc, but ctags only support
  definition.

  As we can use GNU global why did I still support ctags in this plugin?</br>
  That's because GNU global only support 6 languages (C, C++, Yacc, Java, PHP4
  and assembly) natively.</br> ctags can support more languages(41 showed on
  the website).

  Actually global can support more languages with Pygments plugin parser, for
  more details please refer `PLUGIN_HOWTO.pygments` in global document.

#### Command mode

| Mapping     | Effect                  |
|-------------|-------------------------|
| :GenCtags   | Generate ctags database |
| :GenGTAGS   | Generate GTAGS          |
| :ClearCtags | Remove tags files.      |
| :ClearGTAGS | Remove GTAGS files      |

#### Insert mode

| Mapping    | Effect                               |
|------------|--------------------------------------|
| `<c-\>`  c | Find functions calling this function |
| `<c-\>`  d | Find functions calling this function |
| `<c-\>`  e | Find functions calling this function |
| `<c-\>`  f | Find functions calling this function |
| `<c-\>`  g | Find functions calling this function |
| `<c-\>`  i | Find functions calling this function |
| `<c-\>`  s | Find functions calling this function |
| `<c-\>`  t | Find functions calling this function |

### [Buftabline](https://github.com/ap/vim-buftabline)

 A well-integrated, low-configuration buffer list that lives in the tabline

### [lightline.vim](https://github.com/itchyny/lightline.vim)

 A light and configurable statusline/tabline plugin for Vim

### [poppy.vim](https://github.com/bounceme/poppy.vim)

This plugin gives rainbow parens propagating from the cursor.

| Mapping Normal | Effect       |
|----------------|--------------|
| `<leader>`tp   | Toggle Poppy |

### [fzf.vim](https://github.com/junegunn/fzf.vim)

Things you can do with fzf and Vim.

#### Command mode

| Mapping   | Effect                                              |
|-----------|-----------------------------------------------------|
| :Files    | starts FZF for search in files                      |
| :GFiles   | starts FZF for search in git files (`git ls-files`) |
| :GFiles?  | starts FZF for search in git status (`git status`)  |
| :Commits  | starts FZF for search in commits                    |
| :Buffers  | starts FZF for search in Buffers                    |
| :Snippets | starts FZF for search in Snippets                   |
| :Maps     | starts FZF for search in Normal mode mappings       |

#### Normal mode

| Mapping | Effect                                          |
|---------|-------------------------------------------------|
| `<c-v>` | When in fzf, open file in vertical split pane   |
| `<c-x>` | When in fzf, open file in horizontal split pane |
| `<c-t>` | When in fzf, open file in new tab               |

### [vim-clang-format](https://github.com/rhysd/vim-clang-format)

This plugin formats your code with specific coding style using clang-format.

### [Asynchronous Lint Engine](https://github.com/dense-analysis/ale)

ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax checking
and semantic errors) in NeoVim 0.2.0+ and Vim 8 while you edit your text files,
and acts as a Vim Language Server Protocol client.

### [vim-easy-align](https://github.com/junegunn/vim-easy-align)

A simple, easy-to-use Vim alignment plugin.
Mapped for normal and visual mode.

| Mapping | Effect                  |
|---------|-------------------------|
| ga      | Start EasyAlign command |

```
gaip= => inner paragraph align around =
vipga= => visual-select inner paragraph align around =
```

### [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

Seamless navigation between tmux panes and vim splits.

#### Normal mode

| Mapping   | Effect                      |
|-----------|-----------------------------|
| `Ctrl-w`h | move to left pane/split     |
| `Ctrl-w`j | move to down pane/split     |
| `Ctrl-w`k | move to up pane/split       |
| `Ctrl-w`l | move to right pane/split    |
| `Ctrl-w`w | move to previous pane/split |

### [vim-smoothie](https://github.com/psliwka/vim-smoothie)

This (neo)vim plugin makes scrolling nice and smooth. Find yourself completely
lost every time you press Ctrl-D or Ctrl-F? You might want to give vim-smoothie
a try!

### [splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim)

This plugin is meant to simplify a task I've found too common in my workflow:
switching between a single-line statement and a multi-line one.

#### Normal mode

| Mapping | Effect                                                                                               |
|---------|------------------------------------------------------------------------------------------------------|
| gS      | split a one-liner into multiple lines                                                                |
| gJ      | <br>(with the cursor on the first line of a block) <br>to join a block into a single-line statement. |

### [grayout.vim](https://github.com/mphe/grayout.vim)

grayout.vim is a simple plugin that grays out inactive preprocessor blocks.
Relies on `.grayout.conf` configuration files at the root of the project to efficiently highlight defines macros.

### [vim-textobj-user](https://github.com/kana/vim-textobj-user)

vim-textobj-user is a Vim plugin to create your own text objects without pain.

### [textobj-word-column.vim](https://github.com/idbrii/textobj-word-column.vim)

The word-based column text-object makes operating on columns of code conceptually simpler and reduces keystrokes.

forked from [coderifous/textobj-word-column.vim](https://github.com/coderifous/textobj-word-column.vim).

### [Vim colorschemes](https://github.com/flazz/vim-colorschemes)

**DISABLED** Because I created my custom coloscheme (in forlder
colorscheme/monkey.vim) One stop shop for vim colorschemes.

