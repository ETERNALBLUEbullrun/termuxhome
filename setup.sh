apt-get update && apt-get upgrade &&
apt-get install vim ctags git sqlite
git config --global alias.cg 'config --global'
git cg alias.uncg 'cg --unset'
git cg alias.lol 'log --oneline'
git cg alias.undoc 'commit -c ORIG_HEAD'
#git cg alias.undo 'reset HEAD~'
git cg alias.undo '!git reset HEAD~ && echo "\"git undoc\" for git commit -c ORIG_HEAD" && :'

