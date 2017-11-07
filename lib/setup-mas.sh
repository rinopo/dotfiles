#!/usr/bin/env bash

# Fail on erros.
set -e

## Ensure exsistence of `brew`.

# shellcheck source=./setup-brew.sh
source ~/dotfiles/lib/setup-brew.sh


## Install MAS CLI.

if [[ ! -x `which mas` ]]; then
  echo "Installing mas..."
  brew install mas
fi


## Sign-in to MAS.

echo "Checking Mac App Store account..."
mas account ||
read -p "Your Apple ID (Email):" -r YOUR_APPLE_ID

if [[ ${YOUR_APPLE_ID} ]]; then
  mas signin ${YOUR_APPLE_ID}
fi

set +e
