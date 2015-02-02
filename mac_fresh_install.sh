

# install XCode
# install command line tools

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

source .brew
source .cask
source .pip_installs
source .mac_config
source bootstrap.sh

\curl -sSL https://get.rvm.io | bash -s stable --ruby
