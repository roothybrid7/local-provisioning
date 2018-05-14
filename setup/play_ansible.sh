#!/bin/sh

if [[ ! -e "roles/williamyeh.oracle-java" ]]; then
  ansible-galaxy install -p roles williamyeh.oracle-java
fi

if [[ -f ".private.yml" ]]; then
  ansible-playbook site_darwin.yml --extra-vars="@.private.yml" --ask-vault-pass -vv
else
  echo "\033[101m.private.yml not found!!!\033[0m"
  exit 1
fi
