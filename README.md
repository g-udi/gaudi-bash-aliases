# gaudi-bash aliases

This repo holds the aliases that [gaudi-bash](https://github.com/g-udi/gaudi-bash) and [gaudi-shell](https://github.com/g-udi/gaudi-shell) load. Both frameworks include it as a git submodule.

## Host contract

The files in `lib/` are shared, byte for byte, by [gaudi-bash](https://github.com/g-udi/gaudi-bash) (bash 4.3 or later) and [gaudi-shell](https://github.com/g-udi/gaudi-shell) (bash 3.2 or later, and zsh). A file must therefore not name either framework (no `GAUDI_BASH*` or `GAUDI_SHELL*` variable, no `gbash` or `gshell` command) and may only rely on what both frameworks provide:

| Name | Meaning |
| --- | --- |
| `cite`, `about-alias`, `about-plugin`, `about-completion`, `about`, `group`, `param`, `example`, `priority` | metadata read by `show`, `search`, `help` and `enable` |
| `_command_exists <name>` | true when `<name>` is anything the shell can run (function, alias, builtin or program); logs an error otherwise, so it is for things that must be there |
| `_binary_exists <name>` | true only when `<name>` is a program on `PATH`; a function or an alias does not count. The probe for an optional tool (use `command -v <name>` when a function should count too) |
| `_homebrew-check` | true when Homebrew is installed; sets `GAUDI_HOST_HOMEBREW_PREFIX` |
| `pathmunge <dir> [after]` | add a directory to `PATH` once |
| `_log_debug`, `_log_warning`, `_log_error` | logging |
| `_read_input <question>` | asks a yes/no question and leaves the answer in `REPLY` (`y` or `Y` means yes) |
| `_array-contains <item> <element>...` | true when `<item>` is one of the elements |
| `NC`, `BLACK`, `RED`, `GREEN`, `YELLOW`, `BLUE`, `MAGENTA`, `CYAN`, `WHITE` and their `BOLD_` forms | colour escape sequences, empty when colours are off; `NC` resets. Print them through a `printf` format string or `echo -e` |
| `GAUDI_HOST_NAME` | the framework's name (`gaudi-bash` or `gaudi-shell`), for messages and cache folders |
| `GAUDI_HOST_COMMAND` | the command its users type (`gbash` or `gshell`) |
| `GAUDI_HOST_HOME` | its install directory; `components/enabled` and `components/custom` live under it |
| `GAUDI_HOST_SED_I_PARAMETERS` | array with the arguments that make `sed` edit in place on this OS |
| `GAUDI_HOST_HOMEBREW_PREFIX` | the Homebrew prefix, empty until `_homebrew-check` or the brew plugin has found it |
| `_gaudi_host_setting <NAME>` | prints the user's setting `<NAME>` (for example `HTTP_PROXY`): `GAUDI_<NAME>`, otherwise the framework's own `GAUDI_BASH_<NAME>` or `GAUDI_SHELL_<NAME>` |

Each framework defines these once, in its `lib/helpers/utils.bash`. Keep every file loadable by bash 3.2 (no `mapfile`, `declare -A`, `${var,,}`, `&>>` or negative array indexes) unless it only makes sense in bash 4, and guard anything that cannot work in zsh with `[[ -n "${ZSH_VERSION:-}" ]]` (a file that only makes sense in bash starts with `[[ -n "${BASH_VERSION:-}" ]] || return 0`). In zsh arrays start at index 1, unquoted variables are not split into words, and `read -p`, `read -a` and `type -P` mean something else: walk arrays by value, read lines with `while IFS= read -r`, and prompt with `printf` followed by `read -r`. Nothing slow may run when a file loads: no `$(tool ...)` at the top level when the environment or a first-use stub can do the job.

## Checklist

- [ ] Make sure to have `# shellcheck shell=bash` at the top of every file and have an empty newline after
- [ ] Make sure to have the `cite about-alias`
- [ ] Make sure to fill in a description of the alias in the `about-alias`

 ```bash
# shellcheck shell=bash

cite about-alias
about-alias 'The Silver Searcher (ag) aliases'
 ```

## Aliases

- **[ag](/lib/ag.aliases.bash)**: The Silver Searcher (ag) aliases
- **[ansible](/lib/ansible.aliases.bash)**: Ansible abbreviations
- **[apt](/lib/apt.aliases.bash)**: apt and dpkg aliases for Ubuntu and Debian distros.
- **[bundler](/lib/bundler.aliases.bash)**: Ruby Bundler
- **[clipboard](/lib/clipboard.aliases.bash)**: pbcopy and pbpaste shortcuts to linux
- **[composer](/lib/composer.aliases.bash)**: Common composer abbreviations
- **[curl](/lib/curl.aliases.bash)**: Curl aliases for convenience.
- **[directory](/lib/directory.aliases.bash)**: Shortcuts for directory commands: ls, cd, &c.
- **[docker-compose](/lib/docker-compose.aliases.bash)**: docker compose abbreviations
- **[docker](/lib/docker.aliases.bash)**: Docker abbreviations/aliases
- **[emacs](/lib/emacs.aliases.bash)**: Emacs editor
- **[fuck](/lib/fuck.aliases.bash)**: fuck/please to retry last command with sudo
- **[gaudi-bash](/lib/gaudi-bash.aliases.bash)**: Aliases for common misspellings of the `gbash` command (`gbsh`, `gbahs`)
- **[general](/lib/general.aliases.bash)**: General aliases: sudo, grep, navigation (cd, ..), directory creation, history, etc.
- **[git](/lib/git.aliases.bash)**: Common git abbreviations
- **[gitsvn](/lib/gitsvn.aliases.bash)**: Common git-svn abbreviations
- **[gls](/lib/gls.aliases.bash)**: gls enhanced ls (port from Linux using coreutils)
- **[heroku](/lib/heroku.aliases.bash)**: Heroku task abbreviations
- **[hg](/lib/hg.aliases.bash)**: Mercurial abbreviations
- **[homebrew](/lib/homebrew.aliases.bash)**: Homebrew abbreviations
- **[homesick](/lib/homesick.aliases.bash)**: Homesick aliases
- **[kubectl](/lib/kubectl.aliases.bash)**: kubectl aliases
- **[ls](/lib/ls.aliases.bash)**: ls aliases to add coloring and extra arguments
- **[maven](/lib/maven.aliases.bash)**: Maven abbreviations
- **[node](/lib/node.aliases.bash)**: Node.js environment aliases
- **[npm](/lib/npm.aliases.bash)**: Common npm abbreviations
- **[osx](/lib/osx.aliases.bash)**: OSX specific aliases
- **[puppet](/lib/puppet.aliases.bash)**: Puppet aliases
- **[rails](/lib/rails.aliases.bash)**: Ruby Rails aliases
- **[svn](/lib/svn.aliases.bash)**: Common svn aliases
- **[systemd](/lib/systemd.aliases.bash)**: systemd service aliases
- **[terraform](/lib/terraform.aliases.bash)**: Aliases for Terraform/OpenTofu
- **[textmate](/lib/textmate.aliases.bash)**: textmate aliases
- **[tmux](/lib/tmux.aliases.bash)**: tmux terminal multiplexer aliases
- **[uuidgen](/lib/uuidgen.aliases.bash)**: uuidgen aliases
- **[vagrant](/lib/vagrant.aliases.bash)**: Vagrant aliases
- **[vault](/lib/vault.aliases.bash)**: Vault aliases
- **[vim](/lib/vim.aliases.bash)**: vim abbreviations
- **[yarn](/lib/yarn.aliases.bash)**: Yarn package manager aliases
