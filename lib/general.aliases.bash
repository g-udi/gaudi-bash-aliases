# shellcheck shell=bash

cite about-alias
about-alias 'General aliases (files and directory listings ls, ll, etc.), navigation (cd, ..), etc. '

# sudo powers
alias _="sudo"

# count items
alias count='ls -1 | grep -c "^.*$"'

# colored grep
# Need to check an existing file for a pattern that will be found to ensure
# that the check works when on an OS that supports the color option
if grep --color=auto "a" "${BASH_IT:-${GAUDI_BASH:-.}}/"*.md &> /dev/null
then
  alias grep='grep --color=auto'
fi

# clear screen alias à la Linux
alias cls='clear'

# navigation aliases
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'
alias ~="cd ~"

# directory creation and removal
alias md='mkdir -p'
alias rd='rmdir'

# shell History
alias h='history'

# tree (list directories as a tree structure)
if ! command -v tree > /dev/null 2>&1; then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# Shortcuts to edit startup files
alias vbrc="vim ~/.bashrc"
alias vbpf="vim ~/.bash_profile"
