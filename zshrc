# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="one-line"
# ZSH_THEME="ys"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias adbunity='adb logcat -s Unity ActivityManager PackageManager dalvikvm DEBUG'
# alias ls='ls -G'
# alias ll='ls -lah'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gitfast zsh-completions colored-man-pages colorize zsh-syntax-highlighting history history-substring-search)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
# source ~/.nvm/nvm.sh
source /home/smorales/mine/zsh-vcs-prompt/zshrc.sh
# nvm use 0.10.38
# Customize to your needs...

# RVM_HOME=$HOME/.rvm
# ADB_HOME=$HOME/workspace/adt-bundle-mac-x86_64-20131030/sdk/platform-tools

# export PATH=$RVM_HOME/bin:$ADB_HOME:$PATH

# export HOMEBREW_GITHUB_API_TOKEN=18b08f4c22a2e99122dbb290c064b5fa6ec4ea66
# export PATH="/Users/smorales/workspace/android-sdk-macosx/platform-tools:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/smorales/workspace/mongodb/bin:/Users/smorales/workspace/coloredlogcat:$PATH"
export EDITOR='vim'
#PATH=/usr/local/bin:$PATH:$HOME/.rvm/bin:$HOME/workspace/adt-bundle-mac-x86_64-20131030/sdk/platform-tools;  # Add RVM to PATH for scripting
