#!/usr/bin/env bash

PLAYBOOK=$1
ENVIRONMENT=$2
STACK=$3
LAYER=$4

if [ -z $ENVIRONMENT ] || [ -z $STACK ] ||  [ -z $LAYER ]; then
  ansible-playbook --connection=local -i /opt/omnia/infrastructure/plugins/inventory $PLAYBOOK | tail -3 | head -1
else
  ansible-playbook --connection=local -i /opt/omnia/infrastructure/plugins/inventory $PLAYBOOK -e env=$ENVIRONMENT -e stack=$STACK -e layer=$LAYER | tail -3 | head -1
fi