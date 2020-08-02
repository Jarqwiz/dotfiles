#   ______    _
#  |___  /   | |
#     / / ___| |__
#    / / / __| '_ \
#   / /__\__ \ | | |
#  /_____|___/_| |_|

export ZSH="/usr/share/oh-my-zsh"
export EDITOR="nvim"
export BROWSER="qutebrowser"
plugins=(
    git
    sudo
    colorize
    common-aliases
    colored-man-pages
    fancy-ctrl-z
    github
    extract
    fzf
)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

export BAT_THEME="ansi-dark"

alias vim='nvim'
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
