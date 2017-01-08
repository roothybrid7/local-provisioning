#!/bin/sh

system_type=$(uname -s)
if [[ "$system_type" = "Darwin" ]]; then
  echo $PATH | grep "$HOME/Library/Python/2.7/bin" >/dev/null || {
    export PATH=$HOME/Library/Python/2.7/bin:$PATH
  }
else
  echo $PATH | grep "$HOME/.local/bin" >/dev/null || {
    export PATH=$HOME/.local/bin:$PATH
  }
fi

which pip >/dev/null 2>&1
if [[ $? -ne 0 ]]; then
  echo "pip not found"
  exit 1
fi
