# shellcheck shell=bash

cite about-alias
about-alias 'Vault aliases'

alias vad="vault delete"
alias val="vault list"
alias var="vault read"
# Leases: `vault renew` and `vault revoke` became `vault lease renew|revoke`
alias varn="vault lease renew"
alias varev="vault lease revoke"
alias vasrv="vault server"
alias vas="vault status"
alias vav="vault version"
alias vaw="vault write"
alias vag="vault login -method=github"
alias varv="vault read -field=value"
