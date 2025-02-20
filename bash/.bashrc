# executes on every new window

orange=$(tput setaf 166);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="\[${orange}\]\w\n"
PS1+="\[${bold}\]\W > "
PS1+="\[${reset}\]"

# os
alias ..="cd ../"
alias ...="cd ../.."
alias ....="cd ../../.."
alias ls="ls -l"
mcd(){
	mkdir -p "$1"
	cd "$1"
}
extract() {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
  }

# git
alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# start ssh agent
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)" >/dev/null
  # add private keys
  ssh-add ~/.ssh/github >/dev/null
fi

# docker
alias dcbuild='docker-compose build'
alias dcup='docker-compose up'
alias dcdown='docker-compose down'
alias dockps='docker ps --format "{{.ID}}  {{.Names}}" | sort -k 2'
docksh() { docker exec -it $1 /bin/bash; }

# conda
export PATH="$HOME/miniconda3/bin:$PATH"
export PATH="$HOME/anaconda3/Scripts:$PATH"

__conda_setup="$('C:/Users/Vialo/anaconda3/Scripts/conda.exe' 'shell.bash' 'hook' 2> /dev/null)"
eval "$__conda_setup"
