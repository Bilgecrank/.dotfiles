export EDITOR="nvim"

eval "$(/opt/homebrew/bin/brew shellenv zsh)"

test -f "${HOME}/.config/.local.env" && source "${HOME}/.config/.local.env"
test -f "${HOME}/.zprofile.local" && source "${HOME}/.zprofile.local"
test -f "${HOME}/.zshrc" && source "${HOME}/.zshrc"

