#!/bin/sh

pat=$1
find . -name '*.xml' -exec grep -nri ${pat} '{}' +

