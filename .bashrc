# Alias
# Git
alias g='git'
alias gl='git pull'
alias gs='git status'
alias gb='git branch'
alias gc='git commit -m'
alias gc.='git checkout .'
alias gcb='git checkout -b'
alias gr.='git reset .'
alias ga='git add .'
alias gd='git diff'
alias grup='git remote update -p'
alias gcos='git checkout staging'
alias gcom='git checkout master'
alias gst='git stash'
alias gstp='git stash pop'
alias hb="hub browse"
alias tg="tig"
# Gems
alias be='bundle exec'
alias sp='bundle exec rspec -fd'
alias cb='bundle exec cucumber'
alias ru='bundle exec rubocop'
alias anns='bundle exec annotate --sort'
# Rails
alias r='bin/rails'
alias rd='bin/rails db'
alias rdm='bin/rails db:migrate'
alias rdms='bin/rails db:migrate:status'
alias rdr='bin/rails db:rollback'
# RAILS_ENV=test
alias rt='bin/rails RAILS_ENV=test'
alias rtd='bin/rails db RAILS_ENV=test'
alias rtdm='bin/rails db:migrate RAILS_ENV=test'
alias rtdms='bin/rails db:migrate:status RAILS_ENV=test'
alias rtdr='bin/rails db:rollback RAILS_ENV=test'
# Heroku
alias hr='heroku'
alias hrl='heroku logs --app'
alias hrlt='heroku logs --tail -app'
alias hrrc='heroku run rails console --app'
alias hrrcs='heroku run rails console --app ookami-staging'
# DB
alias pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'
alias pgs='pg start'
alias pgp='pg stop'
alias pgr='pg restart'
# ls option ==>Replace exa command
alias ls='exa -G'
alias ll='exa -lG'
alias la='exa -laG'
alias lh='exa -abghHliS'
alias lt='exa --long --tree'
# tmux
alias t='tmux'
alias tkl='tmux kill-server'
alias tls='tmux ls'
alias tn='tmux new -s'
alias tkls='tmux kill-session -t'
alias ta='tmux a -t'
# Flutter
alias fl='flutter'
# serverless
alias sld='./node_modules/serverless/bin/serverless deploy -v --stage production'
alias sldf='./node_modules/serverless/bin/serverless deploy function -v --stage production --function'
# Edit alias
alias edal='code ~/.bashrc'
alias fal='alias | ag'
alias setal='source ~/.bashrc'
# s3cmd
alias s3ls='s3cmd ls'
alias s3get='s3cmd get --force --recursive'
# Unzip
# alias unar='unar'
# cd
alias api='cd ~/ookamiinc/api'
alias cdd='cd ~/Desktop'
# others
alias chr='open -a Google\ Chrome'
alias c='code'
alias c.='code .'
alias hi='ookami open'
alias edbashp='code ~/.bash_profile'
alias edbashr='code ~/.bashrc'
alias .bashp='source ~/.bash_profile'
alias .bashr='source ~/.bashrc'
alias ff='find . -name'
alias tl='tree -L 1'

# Prompt
# PS1='\[\e[34m\]\w \[\e[37m\]\$\[\e[0m\] '
# export PS1='\[\e[34m\]\@ \[\e[33m\]\u@\h \[\e[32m\]\w\e[0m\n\$ '

# Source git completion
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# Source git prompt
if [ -f ~/.git-prompt.sh ]; then
    GIT_PS1_SHOWDIRTYSTATE=1
    . ~/.git-prompt.sh
    PS1='[\e[34m\]\u\e[33m\]@\h \e[32m\]\W$(__git_ps1 " (%s)")\e[0m]\n\$ '
fi

# Google API Service account's credentials
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sakaikyohei/Development/google-cloud-sdk/path.bash.inc' ]; then source '/Users/sakaikyohei/Development/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sakaikyohei/Development/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/sakaikyohei/Development/google-cloud-sdk/completion.bash.inc'; fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f ~/.nodebrew/node/v8.9.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . ~/.nodebrew/node/v8.9.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f ~/.nodebrew/node/v8.9.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . ~/.nodebrew/node/v8.9.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/sakaikyohei/.nvm/versions/node/v6.11.5/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /Users/sakaikyohei/.nvm/versions/node/v6.11.5/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash
