#!/bin/sh

find . -print 2>/dev/null|sort |awk '!/\.$/ {for (i=1;i<NF;i++){d=length($i);if ( d < 5 && i != 1 )d=5;printf("%"d"s","|")}print "---"$NF}' FS='/'
