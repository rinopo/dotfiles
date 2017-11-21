#!/usr/bin/env bash

# General

echo "Sidebar icon size: small"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1
echo "Scrollbar: always show"
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
echo "Scrollbar: jump to clicked spot"
defaults write NSGlobalDomain AppleScrollerPagingBehavior -int 1
echo "Ask to save changes when closing application"
defaults write NSGlobalDomain NSCloseAlwaysConfirmsChanges -int 1

# Dock

echo "Prefer tabs when opening documents: always"
defaults write NSGlobalDomain AppleWindowTabbingMode -string "Always"
echo "Automatically hide and show the Dock"
defaults write com.apple.dock autohide -int 1

# Mission Control

echo "Exposé: Group windows by application"
defaults write com.apple.dock expose-group-by-app -int 1

# Language & Region

echo "Week starts on: Monday"
defaults write NSGlobalDomain AppleFirstWeekday -dict "gregorian" 2;


killall Finder
killall Dock
killall SystemUIServer
