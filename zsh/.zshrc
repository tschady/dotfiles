# -*- shell-script -*-

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# <tws>
setopt NO_HUP
setopt PRINT_EXIT_VALUE

# Brew
fpath=($HOME/.zsh/func $fpath)
typeset -U fpath

### time output
export REPORTTIME=5
export TIMEFMT="[ time: user: %U | system: %S | cpu: %P | total: %*Es ]"

### windowing
#show pwd in title bar
precmd() {
  [[ -t 1 ]] || return
  case $TERM in
    (sun-cmd) print -Pn "\e]l%~\e\\"
      ;;
    (*xterm*|rxvt|(dt|k|E)term) print -Pn "\e]2;%~\a"
      ;;
  esac
}

# custom theme
source $HOME/.zsh/tschady.zsh-theme

# aliases specific to ZSH
source $HOME/.zaliases

# env vars
export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"
export LESS="-R-i-P?f%f:STDIN (%i/%m) Line %lt/%L"
export PGDATA="/usr/local/var/postgres"

# include local env vars, such as passwords, which we do not want in SCCS
LOCAL_FILE=$HOME/.zshrc_local
[[ -r $LOCAL_FILE ]] && source $LOCAL_FILE

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

PERL_MB_OPT="--install_base \"/Users/tschady/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/tschady/perl5"; export PERL_MM_OPT;
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.bin:$PATH"

export NVM_DIR=~/.nvm

source $(brew --prefix nvm)/nvm.sh
eval "$(rbenv init - zsh --no-rehash)"
