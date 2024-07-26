#!/bin/bash

# Vim setting
vim_install () {
	echo "Set up vim settings"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	cp ./vim/.vimrc ~/.vimrc
	cp -r ./vim/plugin ~/.vim/
	vim +PluginInstall +qall
}

# jetbrains
jetbrains () {
	echo "Set up jetbrains settings"
	cp ./idea/.ideavimrc ~/.ideavimrc
	cp ./idea/ideapostfix.postfixTemplates ~/ideapostfix.postfixTemplates
}

git_set(){
	echo "Set up git settings"
	bash ./git/git_alias.sh
}

tmux_set() {
	echo "Set up tmux"
	cp ./tmux/.tmux.conf ~/.tmux.conf
}

vim_install
jetbrains
git_set
tmux_set
