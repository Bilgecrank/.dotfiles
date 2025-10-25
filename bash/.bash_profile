export EDITOR="nvim"

if [ -z $SSH_AGENT_PID ] && [ -z $SSH_TTY ]; then  # if no agent & not in ssh
	eval "$(ssh-agent -s)" > /dev/null
fi

if [ -f "${HOME}/.bash_profile.local" ]; then
	source "${HOME}/.bash_profile.local"
fi

if [ -f "${HOME}/.bashrc" ]; then
	source "${HOME}/.bashrc"
fi
