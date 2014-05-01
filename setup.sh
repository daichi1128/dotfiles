#!/bin/bash
DOT_FILES=(.vimrc .vim .zshrc)

for file in ${DOT_FILES[@]}; do
    [ ! -L $HOME/$file ] && [ -a $HOME/$file ] && mv $HOME/$file $HOME/$file.bak && echo "mv $HOME/$file $HOME/$file.bak"
    [ ! -L $HOME/$file ] && [ ! -a $HOME/$file ] && ln -s $HOME/dotfiles/$file $HOME/$file && echo "ln -s $HOME/dotfiles/$file $HOME/$file"
done
[ ! -d $HOME/.vim/bundle/neobundle.vim ] && git clone git://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
