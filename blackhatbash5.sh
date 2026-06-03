#!/bin/bash

touch test && touch test123
(ls; ps)
ls; ps; whoami 
lzl || echo "el comando fallo"
ls -l / &> stdout_and_stderr.txt
ls -l / 1> stdout.txt 2> stderr.txt
echo "uno" > archivo.txt
cat archivo.txt
echo "uno-uno" >archivo.txt
cat archivo.txt
echo "dos -dos" > archivo.txt
cat archivo.txt
echo "uno-uno" >> archivo.txt
echo "dos -dos" >> archivo.txt
 cat archivo.txt
cat << EOF
Black Hat Bash
by No Starch Press
EOF