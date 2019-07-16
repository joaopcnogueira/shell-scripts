#!/bin/bash


cat $1 | egrep -o '\w+' | grep ..... |sort -f | uniq -c -i | sort -n -r | head -n $2
