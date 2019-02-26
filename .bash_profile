# Bashprofile of rctl (github.com/rctl). Use at own risk.

# Aliases

#  Navigation and file management
alias ..="cd .."
alias ...="cd ../.."
alias rctl="cd ~/Projects/src/github.com/rctl"
alias github="cd ~/Projects/src/github.com/"

#  Simple replacements and shortcuts
alias nano='vi'

#  Kubernetes
alias k="kubectl"
alias ka="kubectl apply -f"
alias kd="kubectl delete -f"
alias kn="kubectl -n"
alias ks="kubectl -n kube-system"

#  Git
alias add="git add"
alias blame="git blame -c --date=relative"
alias branch="git checkout -b"
alias branches="git branch"
alias checkout="git checkout"
alias commit="git commit -S -m"
alias fetch="git fetch"
alias log="git log --pretty=format:'%C(yellow)%h %C(cyan)%ad %C(magenta)%an%Cgreen%d %Creset%s' --date=relative"
alias pull="git pull"
alias push="git push"
alias revert="git revert HEAD~1"
alias st="git status"
alias tag="git tag -s"
alias stash="git stash"
alias pop="git stash pop"

#  Let cd also print folder contents (I tend to do that manually if its not automatic)
function cd {
  builtin cd "$@" && ls
}

# Search backwards in history
bind '"\e[A":history-search-backward'
bind '"\e[A":history-search-backward'

# GO
export GOPATH=~/Projects/

# Git integration
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

# Style
export PS1="\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\[\e[31m\]\`parse_git_branch\`\[\e[m\] \[$(tput sgr0)\]\[\033[38;5;2m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"


