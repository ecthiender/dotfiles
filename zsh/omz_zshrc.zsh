# use 256 colors for terminal colors
if [[ $TERM == "xterm" ]]; then
  export TERM="gnome-256color"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# load pure: https://github.com/sindresorhus/pure#install
fpath+=$HOME/.zsh/pure

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="arrow-custom"
#ZSH_THEME="arrow"
ZSH_THEME=""
# ZSH_THEME="miloshadzic"
# ZSH_THEME="wedisagree"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git extract history-substring-search python docker archlinux web-search cabal stack rust)

source $ZSH/oh-my-zsh.sh

# User configuration

#export GOROOT=$HOME/.local/go
#export GOPATH=~/work/hasura/go
#export PATH=$PATH:$HOME/.local/go/bin:/usr/local/bin:$GOPATH/bin
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
#export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Source .zshenv which sets PATH
if [ -f ~/.zshenv ]; then
  source ~/.zshenv
fi

# Load my custom alias file
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# Swap ctrl and capslock keys - maybe move to a lower runlevel script?
#/usr/bin/setxkbmap -option "ctrl:swapcaps"

# Load gcloud rc file - to enable gcloud completions
if [ -f ~/.gcloudrc ]; then
  source ~/.gcloudrc
fi

# Load my custom shell funcs
if [ -f ~/dotfiles/shell/functions.sh ]; then
  source ~/dotfiles/shell/functions.sh
fi

# activate pure: https://github.com/sindresorhus/pure#getting-started
autoload -U promptinit; promptinit

# customize the default colors of pure prompt
zstyle :prompt:pure:path color 024
zstyle :prompt:pure:prompt:success color green
zstyle :prompt:pure:git:stash show yes

prompt pure
