#!/usr/bin/env bash
. ../../../testdata_tools/gen.sh


use_solution joshua.cpp

samplegroup
sample rostkop0

group group1 40
include_group sample
tc_manual rostkop1
tc_manual rostkop2

group group2 60
include_group group1
tc_manual rostkop3
tc_manual rostkop4
tc_manual rostkop5
