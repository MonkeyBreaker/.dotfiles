# VIM configuration files and plugins used

## Mapping

leader key : `-`

### Normal mode

| Mapping                   | Effect                                      |
|---------------------------|---------------------------------------------|
| `<F7>`                    | Toggle spell                                |
| Ctrl + J                  | Move line down                              |
| Ctrl + K                  | Move line up                                |
| Ctrl + L                  | Quick orthography fix                       |
| `<leader>`ev              | Edit .vimrc                                 |
| `<leader>`sv              | Source .vimrc                               |
| `<leader>`8               | Replace the content of the next parathesis  |
| `<leader>`tm              | Toggle Table Mode                           |
| `<leader>`tdd             | Delete Row in Table mode                    |
| `<leader>`tdc             | Delete Column in Table mode                 |
| cs`<old><new>`            | Change surroundings from `<old>` to `<new>` |
| ds`<old>`                 | Delete surroundings `<old>`                 |
| ys`<motion><new>`         | you surround with `<motion>` with `<new>`   |
| ySS`<new>`                | you surround up & down with `<new>`         |
| ys`<motion>`f`<func><cr>` | you surround `<motion>` with func()         |
| gcc                       | Comment or uncomment [count] lines.         |
| gc`<motion>`              | Comment or uncomment lines with {motion}    |

### Insert mode

| Mapping  | Effect                |
|----------|-----------------------|
| `<F7>`   | Toggle spell          |
| qp       | Enter normal mode     |
| Ctrl + K | Delete line           |
| Ctrl + U | Toggle word case      |
| Ctrl + L | Quick orthography fix |

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

### [VIM Python Mode](https://github.com/python-mode/python-mode)

A Python IDE for Vim, read help (:help pymode) or see the [wiki](https://github.com/python-mode/python-mode/wiki) for more information.

### [surround.vim](https://github.com/tpope/vim-surround)

Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.

### [commentary.vim](https://github.com/tpope/vim-commentary)

Comment stuff out.
