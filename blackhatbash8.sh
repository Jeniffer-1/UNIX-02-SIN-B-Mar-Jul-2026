#!/bin/bash
awk '{print $1,$2,$3}' log.txt

awk '{print $1}' log.txt
awk '{print $2}' log.txt
awk '{print $3}' log.txt

awk '{print $1,$NF}' log.txt

awk 'NR < 10' log.txt
#show 10 lineas 

grep "42.236.10.117" log.txt | awk '{print $7}'

sed 's/Mozilla/Godzilla/g' log.txt

sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt
sed - i 's/Mozilla/Godzilla/g' log.txt 
grep "Godzilla" log.txt

sed 's/ //g' log.txt
