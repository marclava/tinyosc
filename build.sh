#!/bin/bash

# catch all warning options :
WARNINGS="-Wall -Wextra -Wfatal-errors"

# for degugging (add native debug info):
# CFLAGS="-g"
# for production (optimize and strip debug info):
CFLAGS="-O -s"

# set C compiler, clang is prefered :
[ $(which "clang") ] && cc=clang || cc=gcc

# compilation of test program :
cc *.c ${WARNINGS} ${CFLAGS} -o tinyosc
