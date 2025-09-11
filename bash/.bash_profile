export EDITOR="nvim"

if [ -f "${HOME}/.bash_profile.local" ]; then
	source "${HOME}/.bash_profile.local"
fi

if [ -f "${HOME}/.bashrc" ]; then
	source "${HOME}/.bashrc"
fi
