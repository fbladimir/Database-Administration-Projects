#!/bin/bash

INPUT=color.data
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read id name
do
	mysql -h 34.133.9.214 -u root -p5924601 -D project -e "INSERT INTO color (color_id, color_name) VALUES ('$id', $name);"
done < $INPUT
IFS=$OLDIFS
