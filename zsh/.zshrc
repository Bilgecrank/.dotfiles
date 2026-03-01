set -o vi

# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias ssh-reload='ssh-add -e /usr/lib/ssh-keychain.dylib && ssh-add -s /usr/lib/ssh-keychain.dylib'


bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

d() {
	docker compose -p "$(basename "$(realpath)")" "$@"
}

dcull() {
	docker stop "$(docker ps -a -q)"
	docker rm "$(docker ps -a -q)"
}


# https://unix.stackexchange.com/questions/43601/how-can-i-set-my-default-shell-to-start-up-tmux
if command -v tmux &>/dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	exec tmux
fi

# Starship
#command -v starship &>/dev/null && eval "$(starship init zsh)"

# Mise
command -v mise &>/dev/null && eval "$(mise activate zsh)"

ssh-add -l | grep 'wlfGHDJsSPqLvXK22/j8t5S0zmrvt/qJUQrub8PjKB4' &>/dev/null
if [ $? -eq 1 ]; then
	echo "Adding "
	ssh-add -s /usr/lib/ssh-keychain.dylib
fi
