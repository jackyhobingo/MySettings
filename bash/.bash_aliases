echo "source ~/.bash_aliases"
alias py3="python3"
alias py2="python2" 
alias rp="source ~/.profile"
cd()
{
  if [ "$1" == ",," ] 
  then
    command cd ".."
  else
    command cd "$@"
  fi
}
