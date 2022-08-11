### Setup the PATH for different tools ###

# Add ~/.local/bin to PATH
LOCALBIN="${HOME}/.local/bin"
PATH="$LOCALBIN:$PATH"

# Install npm packages globally without sudo on OS X and Linux
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
# https://docs.npmjs.com/getting-started/fixing-npm-permissions
NPM_PACKAGES="${HOME}/.npm-global"
PATH="$NPM_PACKAGES/bin:$PATH"

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# setup path for cabal and ghcup
# CABAL="$HOME/.cabal/bin"
# GHCUP="$HOME/.ghcup/bin"
# PATH="$GHCUP:$CABAL:$PATH"
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

export GOROOT="${HOME}/.local/bin/golang"
export ANDROID_SDK="${HOME}/Android/Sdk"

# for flutter https://docs.flutter.dev/get-started/install/linux
FLUTTER_TOOLS="${HOME}/codeyard/flutter-installation/flutter/bin"
PATH="$PATH:$FLUTTER_TOOLS"
export CHROME_EXECUTABLE="/usr/bin/chromium"

# finally export this PATH
export PATH
