#!/usr/bin/env bash

PLAYBOOK=$1
BTYPE=$2

if [ -z $TYPE ] ; then
  ansible-playbook --connection=local -i /opt/omnia/infrastructure/plugins/inventory $PLAYBOOK
else
  ansible-playbook --connection=local -i /opt/omnia/infrastructure/plugins/inventory $PLAYBOOK -e app_base_type=$BTYPE 
fi