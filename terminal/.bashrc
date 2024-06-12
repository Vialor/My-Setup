orange=$(tput setaf 166);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="${orange}\w\n";
PS1+="${bold}\W > ";
PS1+="${reset}";

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

# navigation
alias ..="cd ../"
alias ...="cd ../.."
alias ....="cd ../../.."
alias ls="ls -l"

# git
alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Start ssh agent
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)" &>/dev/null
  # add private keys
  ssh-add ~/.ssh/github &>/dev/null
fi