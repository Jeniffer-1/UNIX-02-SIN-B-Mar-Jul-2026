#!/bin/bash
#!/bin/bash -x #muestra los comandos en timpo real- displays commands in real time
bash --version
env
echo ${SHELL}
echo ${RANDOM}
echo ${UID}
echo ${OSTYPE}
ps -e -f
ps -ef
df --human-readable
#bash -r blackhatbash1.sh #ejecuatar en modo restringido - run in restricted mode
#bash -n blackhatbash1.sh #muestra errores de sintaxis  - shows syntax errors -n #debugging 
#bash -x blackhatbash1.sh #activa modo verboso. active verbose mode
