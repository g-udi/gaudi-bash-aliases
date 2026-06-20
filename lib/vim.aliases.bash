# shellcheck shell=bash

cite about-alias
about-alias 'vim abbreviations'

VIM=$(command -v vim || true)
GVIM=$(command -v gvim || true)
MVIM=$(command -v mvim || true)

if [[ -n $VIM ]]; then
  v () { command vim "$@"; }
fi

# open vim in new tab is taken from http://stackoverflow.com/questions/936501/let-gvim-always-run-a-single-instancek
case $OSTYPE in
  darwin*)
    if [[ -n $MVIM ]]; then
      mvimt () { command mvim --remote-tab-silent "$@" || command mvim "$@"; }
    fi
    ;;
  *)
    if [[ -n $GVIM ]]; then
      gvimt () { command gvim --remote-tab-silent "$@" || command gvim "$@"; }
    fi
    ;;
esac
unset VIM GVIM MVIM
