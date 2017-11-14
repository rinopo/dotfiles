#!/usr/bin/env bash

###
### Maximal apps (for personal Macs).
###

# shellcheck source=./lib/setup-brew.sh
source ~/dotfiles/lib/setup-brew.sh
# shellcheck source=./lib/setup-mas.sh
source ~/dotfiles/lib/setup-mas.sh


## Gems

gem install rubocop
gem install rubocop-cask
# For installing hatena-bookmark chrome extension, etc.
gem install bundler



## Formulae

brew install bash-completion
brew install brew-cask-completion
brew install hub
brew install ghi
brew install ssh-copy-id
brew install goaccess
brew install wget
brew install youtube-dl
brew install ffmpeg
brew install imagemagick
brew install cliclick
brew install mackup
# diff-pdf requires XQuartz to be installed beforehand.
brew cask install xquartz && brew install diff-pdf
# Required by linter-shellcheck Atom package.
brew install shellcheck
brew install vitorgalvao/tiny-scripts/cask-repair



## Clean-up formulae.

brew cleanup



## Casks & MAS apps

# System Setting

# ControlPlane - automation by hardware event triggers
brew cask install controlplane
# LaunchControl - GUI for launchctl
brew cask install launchcontrol
# Startupizer - Start-up apps manager for the maniacs
brew cask install startupizer


# System Monitoring

# Objective-See apps - scurity audit tools
brew cask install blockblock
brew cask install knockknock
brew cask install taskexplorer
brew cask install ransomwhere
brew cask install oversight
# iStat Menus - Activity Monitor in menu bar
brew cask install istat-menus
# Intel Power Gadget - Optionally required by iStat Menus
brew cask install intel-power-gadget
# EtreCheck - open source health checker for Mac
brew cask install etrecheck


# System UI

# Bartender - menu bar manager
brew cask install bartender
# Unclutter - drawer for files and memos
mas install 577085396
# AppCleaner - zap related files when uninstalling apps
brew cask install appcleaner
# Alfred -
brew cask install alfred
# MacID
brew cask install macid
# Witch
brew cask install witch
# Language Switcher
brew cask install language-switcher


# Network

# WiFi Signal
mas install 525912054
# Speedtest
mas install 1153157709
# NetSpot
mas install 514951692
# Bandwidth+
mas install 490461369
# SwitchHosts!
brew cask install switchhosts


# Display

# InsomniaX
brew cask install insomniax
# Duplicate Windows
mas install 590463794
# SideMirror
mas install 944860108
# Displays
mas install 1107272470


# Mouse & Keyboard

# BetterTouchTool
brew cask install bettertouchtool
# Karabiner-Elements
brew cask install karabiner-elements
# Keymo
brew cask install keymo
# Mouseposé
brew cask install mousepose
# QBlocker
brew cask install qblocker


# Clipboard

# ClipMenu
export CURL_HOME="${HOME}/dotfiles/cask"
brew cask install ~/dotfiles/cask/clipmenu.rb
unset CURL_HOME
# PasteFiler
export CURL_HOME="${HOME}/dotfiles/cask"
brew cask install ~/dotfiles/cask/pastefiler.rb
unset CURL_HOME
# Characters
mas install 536511979


# Finder

# A Better Finder Rename
brew cask install a-better-finder-rename
# Find Any File
brew cask install find-any-file
# Default Folder X
brew cask install default-folder-x
# New File Menu
mas install 1064959555
# Context Menu
mas install 1236813619
# iCloud Control
open "https://github.com/Obbut/iCloud-Control/releases"


# Storage

# Dropbox
brew cask install dropbox
# Backup and Sync
brew cask install google-backup-and-sync
# DaisyDisk
mas install 411643860
# HD Cleaner
mas install 836769549
# TimeMachineEditor
brew cask install timemachineeditor
# BackupLoupe
brew cask install backuploupe


# Device Support

# iBetterCharge
brew cask install ibettercharge
# iMazing
brew cask install imazing
# MacID
brew cask install macid


# Compression

# Keka
mas install 470158793
# The Unarchiver
mas install 425424353
# BetterZip
brew cask install betterzip
# Suspicious Package
brew cask install suspicious-package
# unpkg
# brew cask install unpkg


# PDF

# PDFGenius
mas install 522090209
# ExSqueeze it
mas install 680194796
# PDFExtractor
open "http://pdfextractor-app.com/en/"


# Text Editor

# Atom
brew cask install atom
# CotEditor
mas install 1024640650 &&
ln -s /Applications/CotEditor.app/Contents/SharedSupport/bin/cot /usr/local/bin/cot
# Transcriptions
mas install 911974149
# MacDown
brew cask install macdown


# Memo

# Tree
mas install 944654199
# Kobito
mas install 896624060
# Evernote
mas install 406056744


# Developer

# Cakebrew
brew cask install cakebrew
# ndm
brew cask install ndm
# Patterns
mas install 429449079
# RegExhibit
brew cask install regexhibit
# Xcode
mas install 497799835 &&
ln -s /Applications/Xcode.app/Contents/Applications/FileMerge.app /Applications &&
ln -s /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app /Applications
# DB Browser for SQLite
brew install sqlitebrowser
# CodeRunner
brew cask install coderunner
# FoobarPlus
mas install 956507502
open "http://www.foobaz.io/plus/"


# Web dev

# Transmit
brew cask install transmit
# Sequel Pro
brew cask install sequel-pro
# Espresso
brew cask install espresso
# Scrutiny
brew cask install scrutiny
# Postman
brew cask install postman
# Local by Flywheel
brew cask install local-by-flywheel
# MJML
brew cask install mjml


# Git

# GitUp
brew cask install gitup
# GitHub Desktop
brew cask install github-desktop
# Fork
brew cask install fork


# VM

# Genymotion
brew cask install genymotion
# VirtualBox
brew cask install virtualbox
open "https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/#downloads"


# SSH / VPN / P2P

# Shuttle
brew cask install shuttle
# Sidestep
brew cask install sidestep
# Transmission
brew cask install transmission
# Tunnelblick
brew cask install tunnelblick


# Browser

# Google Chrome
brew cask install google-chrome
# Google Chrome Canary
brew cask install google-chrome-canary
# Firefox (ja)
brew cask install firefox
# Firefox Developer Edition
brew cask install caskroom/homebrew-versions/firefoxdeveloperedition
# Newsflow
mas install 890805912


# Email

# Kiwi for Gmail
mas install 986304488
# Mailto Interceptor
mas install 883196547


# Image Viewer

# Sequential
brew cask install sequential
# Xee³
mas install 639764244


# Image Editor

# ImageOptim
brew cask install imageoptim
# Th-MakerX
brew cask install th-makerx
# Image Crop
mas install 1204191650
# IconFly
mas install 556381974
# Tunacan
mas install 980577198
# Sabacan
mas install 1071669325
# Beautune
brew cask install beautune
# Inpaint
mas install 906524969
# iResizer
mas install 949673500
# Snapheal
mas install 480623975
# Super Denoising
mas install 1016781856
# Vectoraster
brew cask install vectoraster


# Screen Capture

# LICEcap
brew cask install licecap
# Mapture
brew cask install mapture
# Monosnap
mas install 540348655
# ScreenShot PSD
mas install 489880259
# Snappy
mas install 512617038


# Color

# ColorSnapper
mas install 969418666
# Sip
brew cask install sip
# Picka
brew cask install picka
# Colorguide
mas install 591709372
# Shade
mas install 1247655340


# Video

# ClipGrab
brew cask install clipgrab
# HandBrake
brew cask install handbrake
# iina
brew cask install iina
# Gif Brewery
mas install 1081413713
# Total Video Converter Pro
mas install 426654691


# Music & Sound

# Airfoil
brew cask install airfoil
# Tune•Instructor
brew cask install tuneinstructor
# Shazam
mas install 897118787
# Audio Genesis
mas install 1067247000
# Ondesoft iTunes Converter
open "http://www.ondesoft.com/itunes_converter/"
# Recordam
mas install 1137954881
# Audacity
open "http://www.audacityteam.org/download/mac/"


# SNS

# Slack
mas install 803453959
# LINE
mas install 539883307
# Skype
brew cask install skype


# Reference

# Mactracker
mas install 430255202
# Dash
brew cask install dash


# Calc

# Calq
brew cask install calq
# Soulver
mas install 413965349
# Aspect Ratio Calculator
mas install 955155151
# Converto
mas install 576421334
# Meander
mas install 923576113


# Life-style

# そら案内
mas install 599799247
# FuzzyTime
mas install 950297057
# Pomotodo
brew cask install pomotodo
# Focus Matrix
mas install 1087284172


# Security

# 1Password
brew cask install 1password
# Espionage
brew cask install espionage


# Collection

# FontExplorer X
brew cask install fontexplorer-x-pro
# Svgsus
mas install 1106867065
# Kindle
brew cask install kindle


# Quick Look

# qlstephen
brew cask install qlstephen
# qlmarkdown
brew cask install qlmarkdown



## Clean-up casks.

brew cask cleanup
