source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

# history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

autoload -Uz compinit promptinit
compinit
promptinit

# keybinds
bindkey '^ ' autosuggest-accept

#eval "$(zoxide init zsh)"
#eval "$(starship init zsh)"
#eval "$(direnv hook zsh)"
. "$HOME/.cargo/env"  

#export
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"
export EDITOR=${EDITOR:-/usr/bin/emacs}
export PAGER=${PAGER:-/usr/bin/less}
export BROWSER="brave-browser"
export TERMINAL="foot"
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}


#antidote
zstyle ':antidote:compatibility-mode' 'antibody' 'on'
source /usr/share/zsh-antidote/antidote.zsh
antidote load $HOME/.config/zsh/.zsh_plugins.txt

