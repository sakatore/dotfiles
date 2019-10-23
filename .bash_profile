# Language
# You can check locale command
# export LANG=ja_JP.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# 
# bashrc
# 
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

#
# Ruby version manager
#
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#
# Python version manager
#
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#
# Node.js version manager
#
export PATH=$HOME/.nodebrew/current/bin:$PATH
# export PATH="$HOME/.ndenv/bin:$PATH"
# eval "$(ndenv init -)"

#
# AWS CLI complement
# http://docs.aws.amazon.com/ja_jp/cli/latest/userguide/cli-install-macos.html#awscli-install-osx-path
#
complete -C '$HOME/.local/bin/aws_completer' aws
export PATH=~/.local/bin:$PATH

#
# hub command
#
eval "$(hub alias -s)"
if [ -f /path/to/hub.bash_completion ]; then
  . /path/to/hub.bash_completion
fi

#
# ookami COMMAND
#
export PATH=~/Ookami/bin:$PATH

# Flutter
export PATH="$HOME/Development/flutter/bin:$PATH"

# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/anaconda3/etc/profile.d/conda.sh"
#         CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/anaconda3/bin:$PATH"
#     fi
# fi
# # unset __conda_setup
# <<< conda init <<<

# Swift for TensorFlow
export PATH=/Library/Developer/Toolchains/swift-latest/usr/bin:"${PATH}"

# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end


export PATH="$HOME/.cargo/bin:$PATH"
