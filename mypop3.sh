#!/bin/bash

# ./mypop3.sh 100 |telnet pop3server 110

username=""
password=''

MAX_MESS=$1
[ $# -eq 0 ] && exit 1 || :

sleep 2
echo USER $username
sleep 1

echo PASS $password
sleep 2
for (( j = 651 ; j <= $MAX_MESS; j++ ))
do
echo DELE $j
sleep 1
done
echo QUIT
