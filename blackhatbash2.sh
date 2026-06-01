#!/bin/bash 
set -x
# All this script does is create a directory, create a file
# within the directory, and then list the contents of the di rectory.
mkdir mydirectory touch mydirectory/myfile 
ls -l mydirectory
set +x

#result
#bash -n blackhatbash2.sh - no salio nada porque no hay errores de sintaxis -Nothing came up because there are no syntax errors

#bash -x blackhatbash2.sh - active verbose mode
#+ mkdir mydirectory touch mydirectory/myfile
#+ ls -l mydirectory
#total 4
#drwxrwxrwx+ 2 root root 4096 jun  1 13:21 myfile
#bash -x blackhatbash2.sh -active verbose mode

set -x

set +x
#+ set -x
#+ mkdir mydirectory touch mydirectory/myfile
#mkdir: cannot create directory ‘mydirectory’: El fichero ya existe
#mkdir: cannot create directory ‘touch’: El fichero ya existe
#mkdir: cannot create directory ‘mydirectory/myfile’: El fichero ya existe
#+ ls -l mydirectory
#total 4
#drwxrwxrwx+ 2 root root 4096 jun  1 13:21 myfile
#+ set +x