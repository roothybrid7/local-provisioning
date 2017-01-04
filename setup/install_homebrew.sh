#!/bin/bash

if which brew >/dev/null 2>&1; then
  echo "Homebrew is already installed"
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

