mkdir new_home
cp ~/.bashrc new_home/
cp ~/.profile new_home/
cp ~/.bash_aliases new_home/

cp ~/.bash_aliases_company new_home/
cp ~/.bash_aliases_privacy new_home/

# git
cp ~/.gitconfig new_home/
cp ~/.git_log_message new_home/

# tmux
cp ~/.tmux.conf new_home/

# vim
mkdir new_home/.vim
cp ~/.vimrc new_home/
zip -r new_home/.vim/bundle.zip ~/.vim/bundle 
cp ~/.vim/plugin new_home/.vim/plugin

# 
cp ~/.ideavim new_home/

# ssh
mkdir new_home/.ssh
cp ~/.ssh/* new_home/.ssh/

zip -r new_home.zip new_home
