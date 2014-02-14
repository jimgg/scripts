#!/bin/sh

pat=$@
find . -name '*.java' -exec grep -nri ${pat} '{}' +

