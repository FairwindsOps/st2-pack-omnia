#!/usr/bin/env bash

PLAYBOOK=$1
ENGINE=$2
ENGINE_VERSION=$3

ansible-playbook --connection=local -i /opt/omnia/infrastructure/plugins/inventory $PLAYBOOK -e engine=$ENGINE -e engine_version=$ENGINE_VERSION