#!/usr/bin/env bash

PLAYBOOK=$1
STACK=$2
LAYER=$3
VERSION=$4
REPO=$5

ansible-playbook --connection=local -i /opt/omnia/plugins/inventory $PLAYBOOK -e stack=$STACK -e layer=$LAYER -e version=$VERSION -e app_repo=$REPO
