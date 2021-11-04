#! /bin/bash

git config --global alias.st status
git config --global alias.ref "for-each-ref --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate"
git config --global alias.br "branch"
git config --global alias.del "branch -D"
git config --global alias.save "!git add -A && git commit -m 'chore: savepoint'"
git config --global alias.update "!git commit --no-edit --amend"
git config --global alias.amend "!git commit --amend"
git config --global alias.undo "reset HEAD~1 --mixed"
git config --global alias.done "!git push origin HEAD"
git config --global alias.res "reset --hard"
git config --global alias.cm commit
git config --global alias.co checkout
git config --global alias.lg "log --color --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -30"
git config --global alias.adog "lg"
git config --global alias.l "log --oneline --decorate"
git config --global alias.sh "!git config user.name && git config user.email"
git config --global alias.setUserName "!git config user.name 'Jacky Ho' && git config user.email 'jackyhobingo@gmail.com'"

