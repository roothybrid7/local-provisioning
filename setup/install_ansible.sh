#!/bin/sh

which pip >/dev/null 2>&1
if [[ $? -ne 0 ]]; then
  echo "pip not found"
  echo "installing pip..."
  mkdir -p ~/Library/Python/2.7/lib/python/site-packages
  easy_install --user pip
fi

echo "installing ansible..."
pip install -U -r $(dirname $0)/requirements.txt
