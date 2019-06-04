# VIM configuration files and plugins used

## Mapping

leader key : `-`

### Normal mode

| Mapping       | Effect                                     |
|---------------|--------------------------------------------|
| `<F7>`        | Toggle spell                               |
| Ctrl + J      | Move line down                             |
| Ctrl + K      | Move line up                               |
| Ctrl + L      | Quick orthography fix                      |
| `<leader>`ev  | Edit .vimrc                                |
| `<leader>`sv  | Source .vimrc                              |
| `<leader>`"   | Surround word with double quotes           |
| `<leader>`c   | Comment line                               |
| `<leader>`8   | Replace the content of the next parathesis |
| `<leader>`tm  | Toggle Table Mode                          |
| `<leader>`tdd | Delete Row in Table mode                   |
| `<leader>`tdc | Delete Column in Table mode                |
| `<leader>`dt  | Insert date under cursor (d/m/y)           |

### Insert mode

| Mapping        | Effect                           |
|----------------|----------------------------------|
| `<F7>`         | Toggle spell                     |
| qp             | Enter normal mode                |
| Ctrl + K       | Delete line                      |
| Ctrl + U       | Toggle word case                 |
| Ctrl + L       | Quick orthography fix            |
| `<leader>`date | Insert date under cursor (d/m/y) |

### Visual mode

| Mapping       | Effect                         |
|---------------|--------------------------------|
| `<leader>`"   | Surround selection with quotes |
| `<leader>`c   | Comment selected line(s)       |
| `<leader>`tmm | Tableize selected lines        |


## Autocommand

* Enable spell `gb` when starting vim

## Pluggins

### [VIM Table Mode](https://github.com/dhruvasagar/vim-table-mode)

Currently this mode is only available when edinting markdown files. This restriction can be easely changed in the `.vimrc`.
