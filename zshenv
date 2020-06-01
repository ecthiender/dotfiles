### Setup the PATH for different tools ###

# Install npm packages globally without sudo on OS X and Linux
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
# https://docs.npmjs.com/getting-started/fixing-npm-permissions
NPM_PACKAGES="${HOME}/.npm-global"
#NPM_PACKAGES="${HOME}/.npm-packages"
#NODE_PATH="${NPM_PACKAGES}/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
## Unset manpath so we can inherit from /etc/manpath via the `manpath`
## command
#unset MANPATH #delete if you already modified MANPATH elsewhere in your config
#MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Add ~/.local/bin to PATH
LOCALBIN="${HOME}/.local/bin"
PATH="$LOCALBIN:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# setup path for cabal and ghcup - required by spacemacs
# CABAL="$HOME/.cabal/bin"
# GHCUP="$HOME/.ghcup/bin"
# PATH="$GHCUP:$CABAL:$PATH"
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

export GOROOT="$HOME/.local/bin/golang"

# finally export this PATH
export PATH
