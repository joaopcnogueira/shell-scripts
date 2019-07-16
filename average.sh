#!/bin/bash
# average.sh
#
# Description:
# Script to average multiple files with awk
# 
# Obs: Depending on your needs, you'll have to modification a little bit
#
# Version 1
#
# João Paulo, 02 de setembro de 2016
#

HELP_MESSAGE="
USAGE: $ $0 filename.dat
"

case "$1" in
	-h)
		echo "$HELP_MESSAGE"
		exit 0
	;;
	
	--help)
		echo "$HELP_MESSAGE"
		exit 0
	;;
esac

awk '{a[FNR]=$1;b[FNR]+=$2;total[FNR]++} END{for(i=1;i<=FNR;i++)print a[i], b[i]/total[i]}' $1


