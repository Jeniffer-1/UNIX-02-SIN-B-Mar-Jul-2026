#!/bin/bash 
set -x
let result="4 * 5"
echo ${result}
#result
#+ set -x
#+ let 'result=4 * 5'
#+ echo 20
#20

result=$((5*5))
echo ${result}
#result
#+ result=25
#+ echo 25
#25
#+ set +x
set +x

