#!/bin/sh

sudo ipfw add 1 deny tcp from not me to me 8060
sudo ipfw add 1 deny tcp from not me to me 3306
sudo ipfw add 2 deny tcp from not me to 10.211.55.3 22

