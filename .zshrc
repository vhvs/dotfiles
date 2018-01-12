# set prompt
autoload -U promptinit; promptinit
prompt pure

# set vi mode
bindkey -v
export KEYTIMEOUT=1

# change arrow in VISUAL mode
# https://github.com/sindresorhus/pure/wiki
VIM_PROMPT="❯"
PROMPT='%(?.%F{magenta}.%F{red})${VIM_PROMPT}%f '

prompt_pure_update_vim_prompt() {
  zle || {
    print "error: pure_update_vim_prompt must be called when zle is active"
    return 1
  }
  VIM_PROMPT=${${KEYMAP/vicmd/❮}/(main|viins)/❯}
  zle .reset-prompt
}

function zle-line-init zle-keymap-select {
  prompt_pure_update_vim_prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# add time to prompt and auto-update it every second
PROMPT='%F{white}%* '$PROMPT
TMOUT=1
TRAPALRM() {
  zle reset-prompt
}

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

