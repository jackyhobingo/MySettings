#!/bin/bash

# Vim setting
vim_install () {
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	cp ./vim/.vimrc ~/.vimrc
	cp -r ./vim/plugin ~/.vim/
	vim +PluginInstall +qall
}

jetbrains () {
	cp ./idea/.ideavimrc ~/.ideavimrc
	cp ./idea/ideapostfix.postfixTemplates ~/ideapostfix.postfixTemplates
}

vim_install
jetbrains
