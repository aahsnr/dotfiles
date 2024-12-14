#!/bin/bash
# git aliases
alias cl='git clone'
alias g='lazygit'


# Misc-related aliases
alias audit="sudo lynis audit system"
# the alias below commented since debian provides update-grub2
#alias update-grub='sudo grub-install --target=x86_64-efi --efi-directory=/boot && sudo grub-install --target=x86_64-efi --efi-directory=/boot --removable && sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias grub-conf='sudo lvim /etc/default/grub'
alias Rm='sudo rm -rf'
# alias htkey-load='sudo pkill -HUP swhkd'
alias reload_emacs='killall emacs && emacs --daemon'
alias snapper='sudo lvim /etc/snapper/configs/root'
alias aa-status='sudo aa-status'
alias l='eza -a --icons --group-directories-first --git-repos'
alias fetch="fastfetch"
alias egrep="grep -E"
alias vi="nvim"

if [[ $TERM == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

case "$(uname -s)" in

Darwin)
	# echo 'Mac OS X'
	alias ls='ls -G'
	;;

Linux)
	alias ls='ls --color=auto'
	;;

CYGWIN* | MINGW32* | MSYS* | MINGW*)
	# echo 'MS Windows'
	;;
*)
	# echo 'Other OS'
	;;
esac
