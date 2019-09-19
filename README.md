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

Currently this mode is only available when editing markdown files. This restriction can be easily changed in the `.vimrc`.

#### Normal mode

| Mapping       | Effect                      |
|---------------|-----------------------------|
| `<leader>`tm  | Toggle Table Mode           |
| `<leader>`tdd | Delete Row in Table mode    |
| `<leader>`tdc | Delete Column in Table mode |

### [VIM Python Mode](https://github.com/python-mode/python-mode)

A Python IDE for Vim, read help (:help pymode) or see the [wiki](https://github.com/python-mode/python-mode/wiki) for more information.

### [surround.vim](https://github.com/tpope/vim-surround)

Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.

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

UltiSnips is the ultimate solution for snippets in Vim. It has tons of features and is very fast.

#### [vim-snippets](https://github.com/honza/vim-snippets)

This repository contains snippets files for various programming languages. Snippets are separated from the engine.

### [vimtex](https://github.com/lervag/vimtex)

vimtex is a Vim plugin that provides support for writing LaTeX documents.

| Mapping | Effect                          |
|---------|---------------------------------|
| \ll     | Enable/Disable auto compilation |

### [clang_complete](https://github.com/xavierd/clang_complete)

This plugin uses clang for accurately completing C and C++ code.

| Mapping      | Effect                                      |
|--------------|---------------------------------------------|
| `<c-x><c-o>` | Use omicompletion to show a completion list |
| `<c-]>`      | Jump to definition                          |
| `<c-t>`      | Jumps back after a jump to definition       |

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

| Mapping Normal | Effect                                              |
|----------------|-----------------------------------------------------|
| :Files         | starts FZF for search in files                      |
| :GFiles        | starts FZF for search in git files (`git ls-files`) |
| :GFiles?       | starts FZF for search in git status (`git status`)  |
| :Commits       | starts FZF for search in commits                    |
| :Buffers       | starts FZF for search in Buffers                    |
| :Snippets      | starts FZF for search in Snippets                   |
| :Maps          | starts FZF for search in Normal mode mappings       |
| `<c-v>`        | When in fzf, open file in vertical split pane       |
| `<c-x>`        | When in fzf, open file in horizontal split pane     |
| `<c-t>`        | When in fzf, open file in new tab                   |

### [vim-clang-format](https://github.com/rhysd/vim-clang-format)

This plugin formats your code with specific coding style using clang-format.
