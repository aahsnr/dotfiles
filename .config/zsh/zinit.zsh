#!/bin/zsh

# Add in zsh plugins
zinit light Aloxaf/fzf-tab


source /usr/share/zsh/plugins/zsh-autopair/autopair.zsh

# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found

zinit cdreplay -q
