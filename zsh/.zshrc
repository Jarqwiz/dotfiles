#   ______    _
#  |___  /   | |
#     / / ___| |__
#    / / / __| '_ \
#   / /__\__ \ | | |
#  /_____|___/_| |_|

setopt correct
setopt appendhistory
setopt histignorealldups
setopt nobeep
setopt nocheckjobs

export ZSH="/usr/share/oh-my-zsh"
export EDITOR="nvim"
export BROWSER="brave"
export GREP="rg"
export MAGIC_ENTER_OTHER_COMMAND="exa --long"
plugins=(
    alias-finder
    archlinux
    colored-man-pages
    colorize
    common-aliases
    extract
    fancy-ctrl-z
    fd
    fzf
    git
    github
    gitignore
    magic-enter
    rust
    rustup
    singlechar
    sudo
    systemd
    zsh-interactive-cd
)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

export BAT_THEME="gruvbox"

alias vim='nvim'
alias v='nvim'
alias ls='lsd'
alias cat='bat'
alias tree='tree -C'
alias sudo='sudo '
alias exa='exa --git --time-style long-iso --header --icons --color-scale'
alias ea='exa --all --long'
alias e='exa --long'
alias et='exa --tree'
alias eta='exa --tree --long --all'

unalias fd

GPG_TTY=$(tty)
export GPG_TTY

source $HOME/.config/broot/launcher/bash/br
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/nvm/init-nvm.sh
