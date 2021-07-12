# Setup fzf
# ---------
if [[ ! "$PATH" == */home/altego/workspace/tools/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/altego/workspace/tools/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/altego/workspace/tools/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/altego/workspace/tools/fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_COMMAND='fdfind --type f --color=never --hidden'
export FZF_DEFAULT_OPTS='--no-height'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'batcat -p --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND='fdfind --type d . --color=never --hidden'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"
