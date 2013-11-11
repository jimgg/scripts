#!/bin/sh

if [ $# -gt 0 ]; then
    dir=$1
else
    dir=.
fi
find ${dir} -name '*.php'

