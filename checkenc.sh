#!/bin/sh

t=$1
echo "Password:"
read -s password
if [ "$t"x = "1pasx" ];then
    saltpass="salt"$password
    s=`echo $saltpass |shasum -a 256 |gawk '{print $1}'`
    if [ "$s"x = "4a638d63ed8187387f5296213cd499bdbbefff18ff7c47ef92dc1e04e9165658x" ];then
        echo "ok"
    else
        echo "fail"
    fi
else
    echo "error"
fi

