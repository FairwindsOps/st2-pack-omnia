#!/usr/bin/env bash

PLAYBOOK=$1
STACK=$2
LAYER=$3
VERSION=$4
APP_REPO=$5


if [ -z $PLAYBOOK ] ||  [ -z $STACK ] ||  [ -z $LAYER ] ||  [ -z $VERSION ] ||  [ -z $APP_REPO ]; then
  exit 1
fi
ansible-playbook $PLAYBOOK -e stack=$STACK -e layer=$LAYER -e version=$VERSION -e app_repo=$APP_REPO | tr '{{' '-'

exit ${PIPESTATUS[0]}
