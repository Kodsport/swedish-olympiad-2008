#!/usr/bin/env bash
. ../../../testdata_tools/gen.sh


use_solution full.cpp
compile gen.py

samplegroup
limits noleftover=0
sample 1

group group1 33
limits noleftover=1
tc g1-h1 gen mode=near h=1 d=0
tc g1-h2 gen mode=near h=2 d=0
tc g1-h3 gen mode=near h=3 d=0
tc g1-h4 gen mode=near h=4 d=0
tc g1-exact-small gen mode=randnear hlo=5 hhi=25 dlo=0 dhi=0
tc g1-exact-mid gen mode=randnear hlo=26 hhi=120 dlo=0 dhi=0
tc g1-exact-large gen mode=randnear hlo=121 hhi=300 dlo=0 dhi=0
tc g1-exact-huge gen mode=randnear hlo=301 hhi=419 dlo=0 dhi=0
tc_manual ../manual_data/tc1.in
tc g1-h420 gen mode=near h=420 d=0
tc g1-h421 gen mode=near h=421 d=0

group group2 67
limits noleftover=0
include_group sample group1
tc g2-n2 gen mode=near h=1 d=1
tc g2-below-h2 gen mode=near h=2 d=-1
tc g2-above-h3 gen mode=near h=3 d=1
tc_manual ../manual_data/tc3.in
tc_manual ../manual_data/tc2.in
tc g2-below-h7 gen mode=near h=7 d=-1
tc g2-near-small gen mode=randnear hlo=2 hhi=30 dlo=-4 dhi=4
tc g2-near-mid gen mode=randnear hlo=31 hhi=200 dlo=-6 dhi=6
tc g2-near-large gen mode=randnear hlo=201 hhi=420 dlo=-8 dhi=8
tc g2-uniform gen mode=uniform nlo=1 nhi=100000000
tc g2-below-max gen mode=near h=421 d=-1
tc g2-above-max gen mode=near h=421 d=1
tc g2-maxn gen mode=value n=100000000
