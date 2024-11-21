#!/usr/bin/env bash

# Completion initialization
zmodload zsh/complist
autoload -Uz compinit && compinit -i
zstyle ':completion:*' menu select=4

# 1. Key Bindings
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# 1.1 Use vim style line editing in zsh
bindkey -v
autoload -U edit-command-line && zle -N edit-command-line
setopt interactivecomments
# 1.2 Movement
bindkey -M viins 'gg' beginning-of-buffer-or-history
bindkey -M viins 'G' end-of-buffer-or-history

# 1.3 Edit line
bindkey -M viins '^E' edit-command-line

# 1.4 Backspace
bindkey '^H' backward-delete-char

# 1.5 Use incremental search
bindkey "^R" history-incremental-search-backward

# 2. Editor
export EDITOR=vim

