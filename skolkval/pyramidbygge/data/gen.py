#!/usr/bin/python3

import sys
import random


def cmdlinearg(name, default=None):
    for arg in sys.argv:
        if arg.startswith(name + "="):
            return arg.split("=")[1]
    if default is None:
        print("missing parameter", name)
        sys.exit(1)
    return default


def blocks(h):
    return h * (4 * h * h - 1) // 3

random.seed(int(cmdlinearg('seed', sys.argv[-1])))
mode = cmdlinearg('mode')

if mode == 'value':
    n = int(cmdlinearg('n'))
elif mode == 'near':
    # A complete pyramid of height h, with d blocks added (or removed).
    n = blocks(int(cmdlinearg('h'))) + int(cmdlinearg('d'))
elif mode == 'randnear':
    h = random.randint(int(cmdlinearg('hlo')), int(cmdlinearg('hhi')))
    n = blocks(h) + random.randint(int(cmdlinearg('dlo')), int(cmdlinearg('dhi')))
elif mode == 'uniform':
    n = random.randint(int(cmdlinearg('nlo')), int(cmdlinearg('nhi')))
else:
    assert False, "unknown mode " + mode

print(n)
