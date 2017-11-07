#!/usr/bin/env bash

###
### Minimal apps (for shared Macs).
###

# shellcheck source=./lib/setup-brew.sh
source ~/dotfiles/lib/setup-brew.sh
# shellcheck source=./lib/setup-mas.sh
source ~/dotfiles/lib/setup-mas.sh


## Casks

# Google Chrome
brew cask install google-chrome

# Firefox
brew cask install firefox

# Dropbox
brew cask install dropbox

# VirtualBox
brew cask install virtualbox
open "https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/#downloads"

# VLC - video player
brew cask install vlc

# Clipy - clipboard manager
brew cask install clipy

# BetterTouchTool
brew cask install bettertouchtool

## Calq - configurable calculator
brew cask install calq

# 1Password
brew cask install 1password

# Quick Look plugins
brew cask install qlstephen
brew cask install qlmarkdown


## Clean-up casks.
brew cask cleanup


## MAS apps

# CotEditor
# Since the Non-MAS version doesn't have auto-update feature, use MAS.
mas install 1024640650 &&
ln -s /Applications/CotEditor.app/Contents/SharedSupport/bin/cot /usr/local/bin/cot

# Tree - outline editor (abandonware)
mas install 944654199

# Monosnap - screen capture
mas install 540348655
