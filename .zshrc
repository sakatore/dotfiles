# Uncomment the folling line to enable oh-my-zsh
# source $HOME/.oh-my-zsh.zsh

export LANG=en_US.UTF-8
# To resolve https://github.com/pypa/pipenv/blob/399c8795c77dbf99b48959008881e586be5f8adb/docs/diagnose.rst#-valueerror-unknown-locale-utf-8
export LC_ALL=en_US.UTF-8

#
# Ruby version manager
#
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end

#
# Python version manager
#
eval "$(pyenv init -)"
# If needed, comment out the following:
# cf. https://github.com/pyenv/pyenv/blob/7dd50144d5c81f92fce064625efd111f1a7919ef/README.md#advanced-configuration
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/shims:$PATH"

# pyenv zsh completion start
# Copy & Paste from https://github.com/pyenv/pyenv/blob/master/completions/pyenv.zsh
if [[ ! -o interactive ]]; then
    return
fi

compctl -K _pyenv pyenv

_pyenv() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(pyenv commands)"
  else
    completions="$(pyenv completions ${words[2,-2]})"
  fi

  reply=(${(ps:\n:)completions})
}
# pyenv zsh completion end

eval "$(pipenv --completion)"

#
# Node.js version manager
#
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Flutter
export PATH="$HOME/Development/flutter/bin:$PATH"

# Personal commands
export PATH=~/Personal/bin:$PATH


#
# Rust
#
fpath+=~/.zfunc
source $HOME/.cargo/env

#
# Docker
#
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# 
# Spaceship ZSH
# 
# 1. Install via npm, see https://github.com/denysdovhan/spaceship-prompt#npm
# 2. Install patched fonts, see https://github.com/powerline/fonts#quick-installation
# 3. Change terminal font config, see https://github.com/powerline/fonts/issues/185
# 
# Set Spaceship ZSH as a prompt
# autoload -U promptinit; promptinit
# prompt spaceship

#
# Starship
# ref. https://github.com/starship/starship
#
# eval "$(starship init zsh)"

source $HOME/.zsh_alias.zsh

#
# Git completion & prompt
# https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh
#
autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'

#
# Custom prompt
# ref. https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
#
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '

#
# AWS CLI
#
source ~/.pyenv/versions/3.7.5/bin/aws_zsh_completer.sh

#
# inetutils
# The following commands have been installed with the prefix ‘g’.
#
#    dnsdomainname
#    ftp
#    rcp
#    rexec
#    rlogin
#    rsh
#     telnet
# 
# If you really need to use these commands with their normal names, you
# can add a “gnubin” directory to your PATH from your bashrc like:
# PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"
