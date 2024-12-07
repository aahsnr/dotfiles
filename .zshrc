# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/plugins.zsh
source $HOME/.config/zsh/debian.zsh

# history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# keybinds
bindkey '^ ' autosuggest-accept

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
. "$HOME/.cargo/env"  
eval "$(thefuck --alias)"
eval "$(~/.dots/.rbenv/bin/rbenv init - --no-rehash zsh)"

FPATH=~/.rbenv/completions:"$FPATH"


#export
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"
export EDITOR=${EDITOR:-/usr/bin/emacs}
export PAGER=${PAGER:-/usr/bin/less}
export BROWSER="brave-browser"
export TERMINAL="foot"
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export PATH=$PATH:$HOME/.config/emacs/bin
export PATH=$PATH:/var/lib/flatpak/exports/bin
export PATH=$PATH:$HOME/.local/bin
export STARSHIP_CACHE=~/.starship/cache

# bun completions
[ -s "/home/ahsan/.bun/_bun" ] && source "/home/ahsan/.bun/_bun"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

DEBEMAIL="ahsanur041@proton.me"
DEBFULLNAME="Ahsanur Rahman"
export DEBEMAIL DEBFULLNAME
