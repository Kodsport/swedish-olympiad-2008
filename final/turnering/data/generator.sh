#!/usr/bin/env bash

. ../../../testdata_tools/gen.sh

use_solution sol.cpp

compile gen_random.py

samplegroup
sample 1

group group1 100
include_group sample
tc_manual turnering1
tc_manual turnering2
tc_manual turnering3
tc_manual turnering4
tc_manual turnering5
