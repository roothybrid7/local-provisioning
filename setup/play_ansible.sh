#!/bin/sh

if [[ -f ".private.yml" ]]; then
  ansible-playbook site.yml --extra-vars="@.private.yml" --ask-vault-pass -vv
else
  echo "\033[101m.private.yml not found!!!\033[0m"
  exit 1
fi
