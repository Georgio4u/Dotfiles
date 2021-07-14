source "$ZDOTDIR/config/zutil.zsh"

# Enable colors
autoload -U colors && colors

# History in cache directory
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/zsh_history
[ ! -f $HISTFILE ] && mkdir -p ~/.cache/zsh
setopt SHARE_HISTORY

setopt  autocd autopushd

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# VI mode
#bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
#bindkey '^r' history-incremental-search-backward

# Edit line in vim with ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

zsh_add_file "config/functions.zsh"
zsh_add_file "config/aliases.zsh"
zsh_add_file "config/prompt.zsh"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

# FZF
zsh_add_file "config/fzf.zsh"

