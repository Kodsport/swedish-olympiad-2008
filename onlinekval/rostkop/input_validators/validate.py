#!/usr/bin/python3
from sys import stdin
import re
import sys
import math

number_pat = "[1-9]\d*\n"
int_re = re.compile(number_pat)

line = stdin.readline()

# first line, one integer.    
assert int_re.match(line)

N = int(line)
assert 1 <= N <= 20

# check one with N numbers
line = stdin.readline()
assert len(line.strip().split()) == N
for x in line.strip().split():
    assert 0 <= int(x) <= 1000

assert len(stdin.readline()) == 0
sys.exit(42)
