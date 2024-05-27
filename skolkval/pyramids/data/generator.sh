#!/usr/bin/env bash
. ../../../testdata_tools/gen.sh


use_solution full.cpp

samplegroup
limits noleftover=0
sample 1

group group1 33
limits noleftover=1
tc_manual tc1

group group2 67
limits noleftover=0
include_group sample
include_group group1
tc_manual tc2
tc_manual tc3
