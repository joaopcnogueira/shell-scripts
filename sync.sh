#!/bin/bash

if [ "$1" == "" ]; then
  echo "usage: $0 [option]"
  echo "     -fS     Sync from Storage"
  echo "     -tS     Sync to Storage"
  echo "     -sS     Show Storage address"
  echo "     -sW     Show Work Directory address"
fi

workdirectory=/home/joao/Doutorado/
storage=/run/media/joao/Storage/Doutorado/

if [ "$1" == "-fS" ]; then
	rsync -av --delete $storage $workdirectory
fi

if [ "$1" == "-tS" ]; then
	rsync -av --delete $workdirectory $storage
fi

if [ "$1" == "-sS" ]; then
	echo $storage
fi

if [ "$1" == "-sW" ]; then
	echo $workdirectory
fi

