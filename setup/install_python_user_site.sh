#!/bin/sh

system_type=$(uname -s)
if [[ "$system_type" = "Darwin" ]]; then
  export PATH=$HOME/Library/Python/2.7/bin:$PATH

  which pip >/dev/null 2>&1
  if [[ $? -ne 0 ]]; then
    echo "pip not found"
    echo "installing pip..."
    mkdir -p ~/Library/Python/2.7/lib/python/site-packages
    mkdir -p ~/Library/Python/2.7/bin
    easy_install --user -U pip
  else
    echo "Already installed python user site packages"
  fi
else
  # TODO: Later Linux version.
  export PATH=$HOME/.local/bin:$PATH
fi
