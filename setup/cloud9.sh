#!/usr/bin/env bash

set -ev

# Install latest NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install lts/boron
nvm alias default lts/boron
nvm use lts/boron

# Install Yarn
sudo apt-get update && sudo apt-get install apt-transport-https ca-certificates
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

# Install bower
yarn global add bower
echo 'export PATH=$PATH:$(yarn global bin)' >> ~/.bashrc
source ~/.bashrc

# Install dependencies
yarn --pure-lockfile
bower install