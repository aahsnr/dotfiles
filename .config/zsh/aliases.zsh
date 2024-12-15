#!/bin/zsh
##-- ALIASES
#
# Git-related
alias cl='git clone'
alias g='lazygit'

# Arch-related
#
alias pac-clean="sudo pacman -Scc && yay -Scc && yay -Yc && sudo pacman -Qtdq | sudo pacman -Rns -"
alias pac-in="yay -S"
alias pac-rm="yay -R"
alias pac-up="yay -Syyuu"
alias pac-clone="pkgctl repo clone --protocol=https"
alias pac-se="yay -Ss"
alias pac-make="makepkg -si --skippgpcheck --skipchecksum"

# Tui-related
alias cls='clear'
alias cp='cp -i'
alias l='eza -a --icons --group-directories-first --git-repos'
alias ls='ls --color=auto'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias ps='ps auxf'
alias Rm='sudo rm -rf'

# Misc-related
alias audit="sudo lynis audit system"
alias update-grub='sudo grub-install --target=x86_64-efi --efi-directory=/boot && sudo grub-install --target=x86_64-efi --efi-directory=/boot --removable && sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias grub-conf='sudo lvim /etc/default/grub'
# alias htkey-load='sudo pkill -HUP swhkd'
alias reload_emacs='killall emacs && emacs --daemon'
alias snapper='sudo lvim /etc/snapper/configs/root'
alias aa-status='sudo aa-status'
alias ff='fastfetch'
alias egrep="grep -E"
alias vi="nvim"
alias docker="sudo docker"

