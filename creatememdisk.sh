#!/bin/sh

# 128M
diskutil erasevolume HFS+ "r1" `hdiutil attach -nomount ram://262144`

