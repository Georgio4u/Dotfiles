# Profile file. Runs on login. Env variables are set here.

# Append to the PATH
[ -d "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"

# Defaults
command -v nvim &> /dev/null && export EDITOR="nvim"

export ZDOTDIR="$HOME/.config/zsh"
