# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/sakaikyohei/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  # git-prompt
  # bundler
  dotenv
  # osx
  rake
  rbenv
  # aws
  # docker
  # nvm
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ========================================
#
# Alias
#
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
alias tg="tig"
# Github
alias hb="hub browse"
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
# alias ls='exa -G'
# alias ll='exa -lG'
# alias la='exa -laG'
# alias lh='exa -abghHliS'
# alias lt='exa --long --tree'
# tmux
alias x='tmux'
alias xls='tmux ls'
alias xn='tmux new -s'
alias xa='tmux a -t'
alias xkill='tmux kill-session -t'
alias xkills='tmux kill-server'
# Flutter
alias fl='flutter'
# zsh config
alias zshrc='code ~/.zshrc'
alias zshrcload='source ~/.zshrc'
# s3cmd
alias s3ls='s3cmd ls'
alias s3get='s3cmd get --force --recursive'
# Unzip
# alias unar='unar'
# cd
alias api='cd ~/ookamiinc/api'
alias cdd='cd ~/Desktop'
# others
alias aliasf='alias | ag'
alias chr='open -a Google\ Chrome'
alias c='code'
alias c.='code .'
alias hi='ookami open'
alias ff='find . -name'
alias tl='tree -L 1'

# ========================================

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
