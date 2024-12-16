#### ~/.zshrc file
##-- SOURCE
# Source zinit first before anything else
source /usr/share/zinit/zinit.zsh
source $HOME/.config/zsh/zinit.zsh
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/completions.zsh
source $HOME/.config/zsh/exports.zsh
source $HOME/.config/zsh/pureprompt.zsh
source $HOME/.config/zsh/keybindings.zsh
#source $HOME/.config/zsh/plugins.zsh
#source $HOME/.config/zsh/debian.zsh

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

##-- EVAL
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
eval "$(thefuck --alias)"
eval "$(rbenv init - --no-rehash zsh)"
eval "$(fzf --zsh)"

#yazi
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

autopair-init

# FPATH=~/.rbenv/completions:"$FPATH"

# # bun completions
# [ -s "/home/ahsan/.bun/_bun" ] && source "/home/ahsan/.bun/_bun"

