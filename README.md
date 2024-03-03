# gaudi-bash aliases

This repo contains a submodule for [gaudi-bash](https://github.com/g-udi/gaudi-bash) with all the aliases it loads.

The alises can make use of the [helper functions](https://github.com/g-udi/gaudi-bash/blob/master/lib/helpers/utils.bash) of gaudi-bash:
- `_is_function`: check if the passed parameter is a function
- `_command_exists`: check if the command passed as the argument exists
- `_binary_exists`: check if the binary passed as the argument exists
- `_completion_exists`: check if the completion function passed as the argument exists
- `_read_input`: reads input from the prompt for a yes/no (one character) input
- `_array-contains`: searches an array for an exact match against the term passed as the first argument to the function. The function exits as soon as a match is found
- `_array-dedupe`: creates a concatenated array of unique and sorted elements
- `_clean-string`: cleans a string from whitespace given a passed cleaning mode

## Checklist

- [ ] Make sure to have `# shellcheck shell=bash` at the top of every file and have an empty newline after
- [ ] Make sure to have the `cite about-alias`
- [ ] Make sure to fill in a description of the alias in the `about-alias`

 ```bash
# shellcheck shell=bash

cite about-alias
about-alias 'Aliases for the gaudi-bash command (these aliases are automatically included with the "general" aliases)'
 ```

## Aliases

- **[ag](/lib/ag.aliases.bash)**: The Silver Searcher (ag) aliases
- **[ansible](/lib/ansible.aliases.bash)**: Ansible abbreviations
- **[apt](/lib/apt.aliases.bash)**: apt and dpkg aliases for Ubuntu and Debian distros.
- **[bundler](/lib/bundler.aliases.bash)**: Ruby Bundler
- **[clipboard](/lib/clipboard.aliases.bash)**: pbcopy and pbpaste shortcuts to linux
- **[composer](/lib/composer.aliases.bash)**: Common composer abbreviations
- **[curl](/lib/curl.aliases.bash)**: Curl aliases for convenience.
- **[docker](/lib/docker.aliases.bash)**-compose: docker-compose abbreviations
- **[docker](/lib/docker.aliases.bash)**: Docker abbreviations/aliases
- **[emacs](/lib/emacs.aliases.bash)**: Emacs editor
- **[fuck](/lib/fuck.aliases.bash)**: fuck/please to retry last command with sudo
- **[gaudi](/lib/gaudi-bash.aliases.bash)**-bash: Aliases for the gaudi-bash command (these aliases are automatically included with the "general" aliases)
- **[general](/lib/general.aliases.bash)**: General aliases (files and directory listings ls, ll, etc.), navigation (cd, ..), etc. 
- **[git](/lib/git.aliases.bash)**: Common git abbreviations
- **[gitsvn](/lib/gitsvn.aliases.bash)**: Common git-svn abbreviations
- **[gls](/lib/gls.aliases.bash)**: gls enhanced ls (port from Linux using coreutils)
- **[heroku](/lib/heroku.aliases.bash)**: Heroku task abbreviations
- **[hg](/lib/hg.aliases.bash)**: Mercurial abbreviations
- **[homebrew](/lib/homebrew.aliases.bash)**: Homebrew abbreviations
- **[homesick](/lib/homesick.aliases.bash)**: Homesick aliases
- **[kubectl](/lib/kubectl.aliases.bash)**: kubectl aliases
- **[ls](/lib/ls.aliases.bash)**: ls aliases to add coloring and extra arguments
- **[maven](/lib/maven.aliases.bash)**: mMven abbreviations
- **[node](/lib/node.aliases.bash)**: Node.js environment aliases
- **[npm](/lib/npm.aliases.bash)**: Common npm abbreviations
- **[osx](/lib/osx.aliases.bash)**: OSX specific aliases
- **[puppet](/lib/puppet.aliases.bash)**: Puppet aliases
- **[rails](/lib/rails.aliases.bash)**: Ruby Rails aliases
- **[svn](/lib/svn.aliases.bash)**: Common svn aliases
- **[systemd](/lib/systemd.aliases.bash)**: systemd service aliases
- **[terraform](/lib/terraform.aliases.bash)**: Aliases for Terraform and Terragrunt
- **[terragrunt](/lib/terragrunt.aliases.bash)**: Aliases for Terraform and Terragrunt
- **[textmate](/lib/textmate.aliases.bash)**: textmate aliases
- **[tmux](/lib/tmux.aliases.bash)**: tmux terminal multiplexer aliases
- **[uuidgen](/lib/uuidgen.aliases.bash)**: uuidgen aliases
- **[vagrant](/lib/vagrant.aliases.bash)**: Vagrant aliases
- **[vault](/lib/vault.aliases.bash)**: Vault aliases
- **[vim](/lib/vim.aliases.bash)**: vim abbreviations
- **[yarn](/lib/yarn.aliases.bash)**: Yarn package manager aliases