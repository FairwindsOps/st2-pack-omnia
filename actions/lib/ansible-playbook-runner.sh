#!/usr/bin/env bash

mystring=''

# Stackstorm passes the first positional argument as the last arg to the script
# last param
playbook="${@: -1}"

# All CLI prameters but last:
# $# is number of args
# The ${@:START:COUNT} syntax is string slicing
# "${@:1:$#-1}" is all of the positional parameters except the last

for item in "${@:1:$#-1}"
do
  prefix='--extra-vars'
  mystring="$mystring $prefix $item "
done

echo $mystring

ansible-playbook $playbook $mystring | tr '{{' '-'

exit ${PIPESTATUS[0]}
