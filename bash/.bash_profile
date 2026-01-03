export EDITOR="nvim"

test -f "${HOME}/.config/.local.env" && source "${HOME}/.config/.local.env"
test -f "${HOME}/.bash_profile.local" && source "${HOME}/.bash_profile.local"
test -f "${HOME}/.bashrc" && source "${HOME}/.bashrc"
