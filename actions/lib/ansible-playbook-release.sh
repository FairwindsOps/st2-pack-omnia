#!/usr/bin/env bash

PLAYBOOK=$1
PREV_ENVIRONMENT=$2
ENVIRONMENT=$3
STACK=$4
LAYER=$5

ansible-playbook --connection=local -i /opt/omnia/infrastructure/plugins/inventory $PLAYBOOK -e previous_env=$PREV_ENVIRONMENT -e env=$ENVIRONMENT -e stack=$STACK -e layer=$LAYER | tr '{{' '-'