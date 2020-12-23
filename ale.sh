#!/usr/bin/env bash
echo $1
 grep $1 /etc/passwd 

if [ $? -eq 0 ];
then
	echo "user already exists"
else
	sudo useradd -m -s/bin/bash $1
fi

