#!/usr/bin/env bash

###
### Install Microsoft Office.
###

# shellcheck source=./lib/setup-brew.sh
source ~/dotfiles/lib/setup-brew.sh

brew cask install microsoft-office

brew cask cleanup
