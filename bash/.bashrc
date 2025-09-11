set -o vi

alias ls='ls --color=auto'
alias grep='grep --color=auto'

if [ -f "${HOME}/.bashrc.local" ]; then
	source "${HOME}/.bashrc.local"
fi

# Starship
eval "$(starship init bash)"

# https://unix.stackexchange.com/questions/43601/how-can-i-set-my-default-shell-to-start-up-tmux
if command -v tmux &>/dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	exec tmux
fi
