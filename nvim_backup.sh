#!/bin/bash

# WARNING: This script overwrites the current configuration

# vim-plug install : https://github.com/junegunn/vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# creating/overwriting configuration files
SETTINGS_DIR="$HOME/.config/nvim"
SETTINGS_FILE="$SETTINGS_DIR/init.vim"

if [ ! -f "$SETTINGS_FILE" ];
	then
		mkdir -p $SETTINGS_DIR \
		&& touch $SETTINGS_FILE
fi		

cat init.vim > $SETTINGS_FILE

# install plugins with vim-plug
nvim source % +:PlugInstall
