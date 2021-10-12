#!/bin/bash

set -x

make clean
./configure wcoss2
. conf/modules.nems.wcoss2
./compile.sh_pll
