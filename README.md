# VIM configuration files and plugins used

## Mapping

leader key : `-`

### Normal mode

| Mapping        | Effect                                     |
|----------------|--------------------------------------------|
| qp             | As pressing `esc`                          |
| `<F7>`         | Toggle spell                               |
| Ctrl + J       | Move line down                             |
| Ctrl + K       | Move line up                               |
| Ctrl + L       | Quick orthography fix                      |
| `<leader>`ev   | Edit .vimrc                                |
| `<leader>`sv   | Source .vimrc                              |
| `<leader>`8    | Replace the content of the next parathesis |

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

### [vim-snippets](https://github.com/honza/vim-snippets)

This repository contains snippets files for various programming languages. Snippets are separated from the engine.

### [vimtex](https://github.com/lervag/vimtex)

vimtex is a Vim plugin that provides support for writing LaTeX documents.

| Mapping | Effect                          |
|---------|---------------------------------|
| \ll     | Enable/Disable auto compilation |

### [clang_complete](https://github.com/xavierd/clang_complete)

This plugin uses clang for accurately completing C and C++ code.

| Mapping     | Effect                                      |
|-------------|---------------------------------------------|
| `<c-x><c-o> | Use omicompletion to show a completion list |
| `<c-]>`     | Jump to definition                          |
| `<c-t>`     | Jumps back after a jump to definition       |

### [Buftabline](https://github.com/ap/vim-buftabline)

 A well-integrated, low-configuration buffer list that lives in the tabline

### [lightline.vim](https://github.com/itchyny/lightline.vim)

 A light and configurable statusline/tabline plugin for Vim
