#!/bin/bash

# Vim setting
vim_install () {
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	cp ./vim/.vimrc ~/.vimrc
	cp -r ./vim/plugin ~/.vim/
	vim +PluginInstall +qall
}

# jetbrains
jetbrains () {
	cp ./idea/.ideavimrc ~/.ideavimrc
	cp ./idea/ideapostfix.postfixTemplates ~/ideapostfix.postfixTemplates
}

git_set(){
	bash ./git/git_alias.sh
}

vim_install
jetbrains
git_set
