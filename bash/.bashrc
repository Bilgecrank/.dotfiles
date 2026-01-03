set -o vi

alias ls="ls --color=auto"
alias grep="grep --color=auto"
d() {
	docker compose -p "$(basename "$(realpath)")" "$@"
}

dcull() {
	docker stop "$(docker ps -a -q)"
	docker rm "$(docker ps -a -q)"
}

test -f "${HOME}/.bashrc.local" && . "${HOME}/.bashrc.local"

# Starship
command -v starship &>/dev/null && eval "$(starship init bash)"

# https://unix.stackexchange.com/questions/43601/how-can-i-set-my-default-shell-to-start-up-tmux
if command -v tmux &>/dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	exec tmux
fi

# Mise
command -v mise &>/dev/null && eval "$(mise activate bash)"
