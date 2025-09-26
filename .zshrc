# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="xiong-chiamiov-plus"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)
# Im using Oni instead of yazi so lets comment shits 
# function y() {
# 	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
# 	yazi "$@" --cwd-file="$tmp"
# 	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
# 		builtin cd -- "$cwd"
# 	fi
# 	rm -f -- "$tmp"
# }

source $ZSH/oh-my-zsh.sh
# export JAVA_HOME=/usr/lib/jvm/java-23-openjdk
# export PATH=$JAVA_HOME/bin:$PATH

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos

pokemon-colorscripts --no-title -s -r

# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up icons for files/folders in terminal
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

eval "$(zoxide init zsh)"

export TERMINAL=kitty

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
export XDG_CURRENT_DESKTOP=Hyprland

. "$HOME/.local/bin/env"
export PATH="$HOME/.cargo/bin:$PATH"


#custom aliases
alias psp='powerprofilesctl set performance'
alias pspo='powerprofilesctl set power-saver'
alias pspb='powerprofilesctl set balanced'
alias py=python

export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"
