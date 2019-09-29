#!/bin/sh

VIM_COLORSCHEME_FOLDER=~/.vim/plugged/vim-colorschemes/colors/
MONKEY_COLORSCHEME=monkey.vim
VIM_CUSTOMFOLDER=$(pwd)

# Deploy monkey colorscheme 
if [ -d "$VIM_COLORSCHEME_FOLDER" ]; then
    if [ ! -f "$VIM_COLORSCHEME_FOLDER$MONKEY_COLORSCHEME" ]; then
        ln -s $VIM_CUSTOMFOLDER/colorscheme/$MONKEY_COLORSCHEME $VIM_COLORSCHEME_FOLDER$MONKEY_COLORSCHEME
    fi
fi

VIM_AFTER_PLUGIN_FOLDER=~/.vim/after/syntax/
VIM_DOCSTRING_PATCH=python.vim
# Deploy python patch for detect docstring as comments
if [ ! -d "$VIM_AFTER_PLUGIN_FOLDER" ]; then
    mkdir -p $VIM_AFTER_PLUGIN_FOLDER
fi
if [ ! -f "$VIM_AFTER_PLUGIN_FOLDER$VIM_DOCSTRING_PATCH" ]; then
    ln -s $VIM_CUSTOMFOLDER/colorscheme/$VIM_DOCSTRING_PATCH $VIM_AFTER_PLUGIN_FOLDER$VIM_DOCSTRING_PATCH
fi
