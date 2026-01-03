export EDITOR="nvim"

test -f "${HOME}/.config/.local.env" && . "${HOME}/.config/.local.env"
test -f "${HOME}/.bash_profile.local" && . "${HOME}/.bash_profile.local"
test -f "${HOME}/.bashrc" && . "${HOME}/.bashrc"
