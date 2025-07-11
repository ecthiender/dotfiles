# This script uses zinit to bootstrap a zsh config. zinit is a plugin manager, which is used to
# installed a bunch of default packages, and then a bunch of OMZ plugins are also installed.

# use 256 colors for terminal colors
if [[ $TERM == "xterm" ]]; then
  export TERM="gnome-256color"
fi

# Set the directory to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# If $ZINIT_HOME is not present, then create dir and clone zinit
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Bootstrap zinit
source "${ZINIT_HOME}/zinit.zsh"

# Load pure theme
zinit ice pick"async.zsh" src"pure.zsh" # with zsh-async library that's bundled with it.
zinit light sindresorhus/pure

# customize the default colors of pure prompt
zstyle :prompt:pure:path color 024
zstyle :prompt:pure:prompt:success color green
zstyle :prompt:pure:git:stash show yes

# load the basic zsh plugins required
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Load extra plugins from the Oh My Zsh ecosystem (plugins can be found in
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins)
# Example format: `omz_plugins=(rails git textmate ruby lighthouse)`
# Add wisely, as too many plugins slow down shell startup.
omz_plugins=(archlinux cabal command-not-found docker extract git python rust stack sudo)
omz_libs=(git.zsh)

# Add in snippets
for plugin in ${omz_libs}; do
  zinit snippet "OMZL::$plugin"
done

for plugin in ${omz_plugins}; do
  zinit snippet "OMZP::$plugin"
done

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# History
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# User configuration

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

# Source .zshenv which sets PATH
[ -f ~/.zshenv ] && source ~/.zshenv

# Load my custom alias file
[ -f ~/.aliases ] && source ~/.aliases

# Swap ctrl and capslock keys - maybe move to a lower runlevel script?
#/usr/bin/setxkbmap -option "ctrl:swapcaps"

# Load gcloud rc file - to enable gcloud completions
[ -f ~/.gcloudrc ] && source ~/.gcloudrc

# Load my custom shell funcs
[ -f ~/dotfiles/shell/functions.sh ] && source ~/dotfiles/shell/functions.sh

# Shell integrations
eval "$(fzf --zsh)"
