# shellcheck shell=bash

cite about-alias
about-alias 'docker compose abbreviations'

alias dco="docker compose"
alias dcol="docker compose logs -f --tail 100"
alias dcou="docker compose up"

# dcofresh [compose file]: stop, remove, start again and tail the logs. It is
# docker-compose-fresh of the docker-compose plugin when that plugin is
# enabled, and the same steps with "docker compose" otherwise. A function, so
# that it also works without the plugin; the alias older versions defined is
# removed first (an alias of that name would be expanded in the definition).
unalias dcofresh 2> /dev/null
function dcofresh {
  if command -v docker-compose-fresh > /dev/null 2>&1; then
    docker-compose-fresh "$@"
    return
  fi

  local -a dco_file_param
  dco_file_param=()
  if [[ -n "${1:-}" ]]; then
    dco_file_param=(--file "$1")
  fi
  docker compose "${dco_file_param[@]}" stop
  docker compose "${dco_file_param[@]}" rm -f
  docker compose "${dco_file_param[@]}" up -d
  docker compose "${dco_file_param[@]}" logs -f --tail 100
}
