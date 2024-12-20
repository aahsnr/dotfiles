# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
source $HOME/.config/bash/debian.bash
source $HOME/.config/bash/aliases.bash
source $HOME/.config/bash/exports.bash
#source $HOME/.config/bash/pkgmaintain.bash

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

eval "$(rbenv init - --no-rehash bash)"
#eval "$(atuin init bash)"
eval $(thefuck --alias FUCK)
eval "$(zoxide init bash)"
eval "$(direnv hook bash)"
eval "$(starship init bash)"
eval "$(fzf --bash)"
source ~/.nix-profile/share/blesh/ble.sh
. "$HOME/.cargo/env"
