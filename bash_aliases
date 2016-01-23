# ~/.bash_aliases: executed by ~/.bashrc
# contains customized functions and aliases 

Zvim() #@ USAGE: _vim [file]
{
  gnome-terminal -t "Vim $(date +%H%M%S)" --working-directory $PWD -e "vim $1"
}

Zcntsh() #@ USAGE Zcntsh [path]
{
  gnome-terminal --profile=container --title "Container $(date +%H%M%S)" --working-directory "${1:-$PWD}"
}

Zgitst() #@ Usage Zgitst [path]  TODO: Add support to accept path as argument.
{
  for f in ~/Repositories/*
  do
     [ -d $f ] && cd "$f" && printf "%b" "\n\n------\n$( pwd )\n" && git status
  done
}
