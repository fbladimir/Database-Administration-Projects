#!/bin/bash

INPUT=color.txt
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read name count
do
	mysql -D fcano009_a5 -e "INSERT INTO color (name, count) VALUES ('$name', $count);"
done < $INPUT
IFS=$OLDIFS
