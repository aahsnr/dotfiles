#!/bin/zsh
##-- KEYBINDINGS
#
bindkey '^ ' autosuggest-accept
bindkey '\e[H'  beginning-of-line
bindkey '\eOH'  beginning-of-line
bindkey '\e[F'  end-of-line
bindkey '\eOF'  end-of-line
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey '\e[5~' up-line-or-history
bindkey '\e[6~' down-line-or-history
