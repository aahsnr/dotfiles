#!/bin/bash

# Debian Package Maintainence
DEBEMAIL="ahsanur041@proton.me"
DEBFULLNAME="Ahsanur Rahman"
export DEBEMAIL DEBFULLNAME

# mc related
if [ -f /usr/lib/mc/mc.sh ]; then
. /usr/lib/mc/mc.sh
fi

alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"
. /usr/share/bash-completion/completions/quilt
complete -F _quilt_completion $_quilt_complete_opt dquilt
