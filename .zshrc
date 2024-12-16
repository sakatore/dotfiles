# -------------------------------
# Language and Locale
# -------------------------------
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# -------------------------------
# Ruby (rbenv)
# -------------------------------
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# -------------------------------
# Python (pyenv)
# -------------------------------
eval "$(pyenv init -)"
compctl -K _pyenv pyenv

# -------------------------------
# Node.js (nvm)
# -------------------------------
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# -------------------------------
# Homebrew Tools
# -------------------------------
export PATH="/usr/local/opt/openssl@1.1/bin:/usr/local/opt/mysql@5.7/bin:$PATH"

# -------------------------------
# Zsh completions
# -------------------------------
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# -------------------------------
# Git Integration
# -------------------------------
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%b'

# -------------------------------
# Custom Prompt
# -------------------------------
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '

# -------------------------------
# Custom Scripts
# -------------------------------
export PATH="$PATH:~/Personal/bin"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/kyoheisakai/.dart-cli-completion/zsh-config.zsh ]] && . /Users/kyoheisakai/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

