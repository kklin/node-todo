#!/usr/bin/env python
from __future__ import print_function

import os
import sys


def get_gitpod_url_fragment():
    """
    Returns the <GITPOD_WORKSPACE_ID>.ws-us.gitpod.io/ part of the
    https://<PORT>-<GITPOD_WORKSPACE_ID>.ws-us.gitpod.io/ URL
    """
    return os.environ['GITPOD_WORKSPACE_URL'].split('https://')[1]


def build_gitpod_url(port):
    return 'https://{}-{}'.format(port, get_gitpod_url_fragment())


if __name__ == '__main__':
    if len(sys.argv) != 2:
        print('USAGE: {} <port_number>'.format(sys.argv[0]))
    else:
        print(build_gitpod_url(sys.argv[1]))
