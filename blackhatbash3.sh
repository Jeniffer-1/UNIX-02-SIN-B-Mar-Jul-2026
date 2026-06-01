#!/bin/bash 
set -x
book="black hat bash"
echo "This book's name is ${book}"
echo "this book's name is $book"
set +x

root_directory=$(ls -ld /)
echo "${root_directory}"
#result
#drwxr-xr-x 1 root root 4096 jun  1 12:40 /
book="black hat bash"
unset book
echo "${book}"