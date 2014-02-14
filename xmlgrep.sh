#!/bin/sh

pat=$@
find . -name '*.xml' -exec grep -nri ${pat} '{}' +

