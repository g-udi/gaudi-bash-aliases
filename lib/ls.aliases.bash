# shellcheck shell=bash

cite about-alias
about-alias 'ls aliases to add coloring and extra arguments'

if command ls --color=auto -d . &> /dev/null; then
  alias ls='command ls --color=auto'
  alias ll='ls -lF'
  alias la='ls -laF'
  alias lsd="command ls --color=auto -lF | grep --color=never '^d'"
  alias llt='ls -lFt'
elif command ls -G -d . &> /dev/null; then
  alias ls='command ls -G'
  alias ll='ls -lFG'
  alias la='ls -laFG'
  alias lsd="command ls -G -lF | grep -G=never '^d'"
  alias llt='ls -lFtG'
else
  alias ls='command ls'
  alias ll='ls -lF'
  alias la='ls -laF'
  alias lsd="command ls -lF | grep '^d'"
  alias llt='ls -lFt'
fi

alias l='ls -a'
alias l1='ls -1'
