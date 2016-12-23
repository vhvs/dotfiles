# set ls colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# ls shortcuts (incl. typos)
alias l="ls"
alias s="ls"
alias sl="ls"
alias lsl="ls"
alias ks="ls"
alias ll="ls -al"
alias la="ls -al"

# git shortcuts
alias add="git add"
alias log="git log"
alias status="git status"
alias co="git checkout"
alias pull="git pull -r"
alias push="git push"
alias rebase="git fetch && git rebase origin/dev"
alias commit="git commit"
alias checkout="git checkout"
alias dev="git checkout dev"
alias master="git checkout master"
alias diff="git diff"
alias st="git status"

# gulp shortcuts
alias serve="gulp serve"
alias light="gulp light"
alias unit="gulp test:unit"
alias lint="gulp lint:js lint:scss"

# other shortcuts
alias hl="heroku local"
alias chrome="open -a Google\ Chrome --args --disable-web-security"

