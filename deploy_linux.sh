#!/bin/sh

DOTFILES_FOLDER=$(pwd)
VIMRC_FILE=.vimrc
TMUX_CONF_FILE=.tmux.conf
ALACRITTY_CONF_FILE=alacritty.yml

deploy_link_and_backup() {
    if [ ! -L ~/"$1" ]; then
        if [ -f ~/"$1" ]; then
            echo "Backuping original $1, old configuration will be found in ~/$1.old"
            mv ~/$1 ~/$1.old
        fi
        ln -s $DOTFILES_FOLDER/$1 ~/
    fi
}

deploy_custom_files() {
    filename=$(echo $2 | rev | cut -d/ -f1 | rev)
    if [ ! -d "$1" ]; then
        mkdir -p $1
    fi
    # I assume that only a symlink can be found at the destination
    if ! [ -L "$1/$filename" ]; then
        ln -s $DOTFILES_FOLDER/$2 $1/$filename
    fi
}

# Check and backup for existing .vimrc file
deploy_link_and_backup $VIMRC_FILE
deploy_link_and_backup $TMUX_CONF_FILE

# Deploy monkey colorscheme 
VIM_COLORSCHEME_FOLDER=~/.vim/colors
MONKEY_COLORSCHEME=vim/colors/monkey.vim
deploy_custom_files $VIM_COLORSCHEME_FOLDER $MONKEY_COLORSCHEME

# Deploy python patch for detect docstring as comments
VIM_AFTER_PLUGIN_FOLDER=~/.vim/after/syntax
VIM_DOCSTRING_PATCH=vim/syntax/python.vim
deploy_custom_files $VIM_AFTER_PLUGIN_FOLDER $VIM_DOCSTRING_PATCH

# Deploy alacritty configuration file
ALACRITTY_FOLDER=~/.config/alacritty
ALACRITTY_FILE=alacritty/${ALACRITTY_CONF_FILE}
deploy_custom_files $ALACRITTY_FOLDER $ALACRITTY_FILE

