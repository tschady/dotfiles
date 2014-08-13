# -*- shell-script -*-

path=(~/bin /usr/local/bin ~/.cask/bin $path)

ssh-add ~/.ssh/id_rsa

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
