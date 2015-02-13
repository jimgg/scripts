#!/bin/sh

t=$1
echo "Password:"
read -s password
s=`echo $password |shasum |gawk '{print $1}'`
if [ "$t"x = "ax" ];then
    if [ "$s"x = "5fd1d5cc7c29fd3de5b836b07cb3ab3f1a660aa0x" ];then
        echo "ok"
    else
        echo "fail"
    fi
elif [ "$t"x = "bx" ];then
    if [ "$s"x = "0457d0d9dd29c50f57d3476508b1e67cf3b1aed9x" ];then
        echo "ok"
    else
        echo "fail"
    fi
else
    echo "error"
fi

