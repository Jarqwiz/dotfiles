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
export MAGIC_ENTER_OTHER_COMMAND="exa --long"
plugins=(
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
	sudo
	systemd
)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

export BAT_THEME="ansi-dark"

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
alias b='bat'

GPG_TTY=$(tty)
export GPG_TTY

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/nvm/init-nvm.sh
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh
