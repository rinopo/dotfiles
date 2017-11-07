#!/usr/bin/env bash

###
### Install Adobe CC.
###

# shellcheck source=./lib/setup-brew.sh
source ~/dotfiles/lib/setup-brew.sh

brew cask install adobe-creative-cloud &&
open /usr/local/Caskroom/adobe-creative-cloud/latest/Creative\ Cloud\ Installer.app

brew cask cleanup
