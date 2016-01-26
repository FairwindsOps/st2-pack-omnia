#!/usr/bin/env bash

PLAYBOOK=$1
ENVIRONMENT=$2
STACK=$3
LAYER=$4
SHA=$5

if [ -z $SHA ]
  ansible-playbook --connection=local -i /opt/omnia/infrastructure/plugins/inventory $PLAYBOOK -e env=$ENVIRONMENT -e stack=$STACK -e layer=$LAYER | tr '{{' '-'
else
  ansible-playbook --connection=local -i /opt/omnia/infrastructure/plugins/inventory $PLAYBOOK -e env=$ENVIRONMENT -e stack=$STACK -e layer=$LAYER -e version=$SHA | tr '{{' '-'
fi