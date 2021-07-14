# Setup fzf
# ---------
if [[ ! "$PATH" == *${HOME}/.tools/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}${HOME}/.tools/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "${HOME}/.tools/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "${HOME}/.tools/fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_COMMAND='fdfind --type f --color=never'
export FZF_DEFAULT_OPTS='--no-height'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'batcat -p --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND='fdfind --type d . --color=never'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"
