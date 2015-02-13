#!/bin/sh

echo "Password:"
read -s password
salt=""
echo $password""$salt |shasum |base64 |pbcopy

