#!/bin/sh

xcodebuild -version >/dev/null 2>&1
if [[ $? -ne 0 ]]; then
  sudo xcodebuild -license
  sudo xcode-select --install
fi
