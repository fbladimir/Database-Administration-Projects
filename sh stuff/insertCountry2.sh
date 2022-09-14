#!/bin/bash

INPUT=fcano009.csv
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read username first last gender dob country color fruits os shell permission
do
	mysql -D fcano009_countries_a3 -e "INSERT INTO $country (username, first, last, gender, dob, country, color, fruits, os, shell, permission) VALUES ('$username', '$first', '$last', '$gender', '$dob', '$country', '$color', '$fruits', '$os', '$shell', '$permission');"
done < $INPUT
IFS=$OLDIFS
