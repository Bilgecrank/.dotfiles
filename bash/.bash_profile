export EDITOR="nvim"

if test -f "${HOME}/.config/.local.env"; then
	source "${HOME}/.config/.local.env"
fi

if test -f "${HOME}/.bash_profile.local"; then
	source "${HOME}/.bash_profile.local"
fi

if test -f "${HOME}/.bashrc"; then
	source "${HOME}/.bashrc"
fi
