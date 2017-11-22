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

# Security

firewall_prefs_path="/Library/Preferences/com.apple.alf"

# Enable firewall. Possible values:
#   0 = off
#   1 = on for specific sevices
#   2 = on for essential services
defaults write ${firewall_prefs_path} globalstate -int 1

# Enable firewall stealth mode (no response to ICMP / ping requests)
# Source: https://support.apple.com/kb/PH18642
defaults write ${firewall_prefs_path} stealthenabled -int 1

# Do not automatically allow signed software to receive incoming connections
defaults write ${firewall_prefs_path} allowsignedenabled -int 0


# Keyboard

input_prefs_path="${HOME}/Library/Preferences/com.apple.HIToolbox"

if defaults read ${input_prefs_path} AppleEnabledInputSources >/dev/null 2>&1; then
  defaults delete ${input_prefs_path} AppleEnabledInputSources
fi
defaults write ${input_prefs_path} AppleEnabledInputSources -array-add '{ "Bundle ID" = "com.apple.inputmethod.Kotoeri"; "Input Mode" = "com.apple.inputmethod.Japanese"; InputSourceKind = "Input Mode"; }'
defaults write ${input_prefs_path} AppleEnabledInputSources -array-add '{ "Bundle ID" = "com.apple.inputmethod.Kotoeri"; "Input Mode" = "com.apple.inputmethod.Roman";  InputSourceKind = "Input Mode"; }'
defaults write ${input_prefs_path} AppleEnabledInputSources -array-add '{ "Bundle ID" = "com.apple.inputmethod.Kotoeri";  InputSourceKind = "Keyboard Input Method"; }'
defaults write ${input_prefs_path} AppleEnabledInputSources -array-add '{ "Bundle ID" = "com.apple.50onPaletteIM";  InputSourceKind = "Non Keyboard Input Method"; }'

echo "Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3


killall cfprefsd
killall SystemUIServer
killall Finder
killall Dock
