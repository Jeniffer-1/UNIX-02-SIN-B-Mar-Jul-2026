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

sed '1d' log.txt > newlog.txt

sed '$d' newlog.txt > newlog1.txt

sed '5,7d' log.txt  > newlog57.txt

sed -n '2,15 p' log.txt

sed -i '1d' log.txt

sleep 100 &
#result
#[1] 23316

ps -ef | grep sleep
#result
#root           1       0  0 12:14 ?        00:00:00 /bin/sh -c echo Container started trap "exit 0" 15  exec "$@" while sleep 1 & wait $!; do :; done -
#root       23316     798  0 13:10 pts/0    00:00:00 sleep 100
#root       23443   23439  0 13:11 ?        00:00:00 sleep 1
#root       23444       1  0 13:11 ?        00:00:00 sleep 1
#root       23447     798  0 13:11 pts/0    00:00:00 grep --color=auto sleep

jobs
#result
#[1]+  Ejecutando                 sleep 100 &

fg %1
#result
#sleep 100
#^Z
#[1]+  Detenido                   sleep 100

bg %1
#result
#[1]+ sleep 100 &

nohup ./ejercicio2.sh &
#[1] 28684
#nohup: se descarta la entrada y se añade la salida a 'nohup.out'
#nohup: fallo al ejecutar la orden './ejercicio2.sh': Permiso denegado
#[1]+  Salida 126                 nohup ./ejercicio2.sh

chmod +x ejercicio2.sh
nohup ./ejercicio2.sh &
#result
#[1] 29723
#se descarta la entrada y se añade la salida a 'nohup.out'


