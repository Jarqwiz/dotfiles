if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
    fzf
)

source $ZSH/oh-my-zsh.sh

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
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh
