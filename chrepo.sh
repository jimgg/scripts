#!/bin/sh

dir=$(basename `pwd`)

repo_dir=../repo/$dir
if [ ! -e $repo_dir ];then
    echo "error "$repo_dir
    exit
fi

cmd=$1

if [ ""$cmd = "git" ];then
    if [ -e $repo_dir/.git ];then
        mv .hg* $repo_dir
        mv $repo_dir/.git .
    else
        echo "no git"
    fi
else
    if [ -e $repo_dir/.hg ];then
        mv .git $repo_dir
        mv $repo_dir/.hg* .
    else
        echo "no hg"
    fi
fi

