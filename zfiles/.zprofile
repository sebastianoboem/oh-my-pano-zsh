# NVM
# Load Homebrew NVM into the shell session
# To install a new version of Node.js with nvm, use this: nvm install 4.8.0
# To set a default Node version to be used in any new shell, use this: nvm alias default 4.8.0
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# rbenv
# Load Homebrew rbenv into the shell session
# To install a new version of Ruby with rbenv, use this: rbenv install 2.4.0
# To set a default Ruby version to be used in any new shell, use this: rbenv global 2.4.0
eval "$(rbenv init -)"

# PHP
# Load Homebrew PHP stable into the shell session
export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"

# Python 2.x
# Load Homebrew Python 2.x into the shell session
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# WGet
# Load Homebrew wget into the shell session
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"