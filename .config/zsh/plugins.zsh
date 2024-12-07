#!/bin/zsh
## autosuggestions
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

## completions
fpath=($HOME/.config/zsh/plugins/zsh-completions/src $fpath)

## history-substring-search
source $HOME/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

## syntax-highlighting
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## fzf-tab
source $HOME/.config/zsh/plugins/fzf-tab/fzf-tab.zsh
autoload -U compinit; compinit

## autopair
source $HOME/.config/zsh/plugins/zsh-autopair/autopair.zsh
autopair-init
