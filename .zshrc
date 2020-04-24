#   ______    _
#  |___  /   | |
#     / / ___| |__
#    / / / __| '_ \
#   / /__\__ \ | | |
#  /_____|___/_| |_|

export ZSH="/usr/share/oh-my-zsh"
export ZSH_THEME="agnoster"
export EDITOR="nvim"
export BROWSER="firefox"
plugins=(
    git
    sudo
    colorize
    common-aliases
    colored-man-pages
    fancy-ctrl-z
    github
    extract
)

source $ZSH/oh-my-zsh.sh

alias vim='nvim'
alias bat='bat --theme ansi-dark'
alias ls='lsd'
alias cat='bat'
alias tree='tree -C'
alias sudo='sudo '

unalias fd

GPG_TTY=$(tty)
export GPG_TTY

source $HOME/.config/broot/launcher/bash/br
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/nvm/init-nvm.sh
