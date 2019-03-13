# VIM configuration files and plugins used

## Mapping

leader key : "-"

### Normal mode

| Mapping       | Effect        |
| ------------- |---------------|
| `<F7>`	| Toggle spell	|
| Ctrl + J      | Move line down|
| Ctrl + K      | Move line up  |
| Ctrl + L	| Quick orthography fix |
| `<leader>`ev  | Edit .vimrc   |
| `<leader>`sv  | Source .vimrc |
| `<leader>`"	| Surround word with double quotes |
| `<leader>`c	| Comment line	|

### Insert mode

| Mapping       | Effect        |
| ------------- |---------------|
| `<F7>`	| Toggle spell	|
| qp		| Enter normal mode |
| Ctrl + K      | Delete line   |
| Ctrl + U      | Toggle word case |
| Ctrl + L	| Quick orthography fix |

### Visual mode

| Mapping       | Effect        |
| ------------- |---------------|
| `<leader>`"	| Surround selection with quotes |
| `<leader>`c	| Comment selected line(s) |


## Autocommand

* Enable spell `gb` when starting vim
