if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
test -f ~/.profile && . ~/.profile
trap 'test -n "$SSH_AUTH_SOCK" && eval `/usr/bin/ssh-agent -k`' 0
