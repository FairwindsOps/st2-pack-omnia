#!/usr/bin/env bash

PLAYBOOK=$1
STACK=$2
LAYER=$3

if [ -z $STACK ] ||  [ -z $LAYER ]; then
  ansible-playbook --connection=local -i /opt/omnia/plugins/inventory $PLAYBOOK | tail -3 | head -1
else
  ansible-playbook --connection=local -i /opt/omnia/plugins/inventory $PLAYBOOK -e stack=$STACK -e layer=$LAYER | tail -3 | head -1
fi