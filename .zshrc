#!/bin/sh

source /usr/share/zinit/zinit.zsh
# source $HOME/.config/zsh/zinit.zsh
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/completions.zsh
source $HOME/.config/zsh/exports.zsh
# source $HOME/.config/zsh/pureprompt.zsh
source $HOME/.config/zsh/keybindings.zsh
#source $HOME/.config/zsh/plugins.zsh
#source $HOME/.config/zsh/debian.zsh


autoload -Uz compinit
compinit

##-- HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# plugins
zinit light esc/conda-zsh-completion
zinit light zsh-users/zsh-autosuggestions
zinit light hlissner/zsh-autopair
zinit light zap-zsh/supercharge
zinit light zap-zsh/vim
# zinit light zap-zsh/zap-prompt
# plug "zap-zsh/atmachine" 
zinit light zap-zsh/fzf
zinit light zap-zsh/exa
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-history-substring-search

# Add in snippets
# zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found

# keybinds
if command -v bat &> /dev/null; then
  alias cat="bat -pp --theme \"Visual Studio Dark+\"" 
  alias catt="bat --theme \"Visual Studio Dark+\"" 
fi

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

##-- EVAL
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
eval "$(thefuck --alias)"
eval "$(rbenv init - --no-rehash zsh)"
eval "$(fzf --zsh)"

autopair-init
