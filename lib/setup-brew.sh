#!/usr/bin/env bash

## Install homebrew.

# Fail on erros.
set -e

if [[ ! -x `which brew` ]]; then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

set +e
