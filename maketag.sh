#!/bin/sh

find . -name '*.java' > cscope.files
cscope -bq

