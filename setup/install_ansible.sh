#!/bin/sh

script_dir=$(dirname $0)
source "$script_dir/export_python_env.sh"

echo "installing ansible..."
pip install -U --user -r $(dirname $0)/requirements.txt
