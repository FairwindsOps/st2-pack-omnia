#!/usr/bin/env bash

PLAYBOOK=$1
TYPE=$2

if [ -z $TYPE ] ; then
  ansible-playbook --connection=local -i /opt/omnia/infrastructure/plugins/inventory $PLAYBOOK | tail -3 | head -1
else
  ansible-playbook --connection=local -i /opt/omnia/infrastructure/plugins/inventory $PLAYBOOK -e app_base_type=$TYPE | tail -3 | head -1
fi