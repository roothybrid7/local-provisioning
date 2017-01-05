#!/usr/bin/env python

import json
import os
import sys


def main():
    python_interpreter = os.popen('which python').read().rstrip()
    inventory = "localhost_%s" % sys.platform
    dirpath = os.path.abspath(os.path.dirname(__file__))
    rootpath = os.path.dirname(dirpath)

    print json.dumps({
        inventory: {
            'hosts': [
                '127.0.0.1'
            ]
        },
        '_meta': {
            'hostvars': {
                '127.0.0.1': {
                    'ansible_python_interpreter': python_interpreter,
                    'ansible_root_path': rootpath,
                }
            }
        }
    })


if __name__ == '__main__':
    main()
