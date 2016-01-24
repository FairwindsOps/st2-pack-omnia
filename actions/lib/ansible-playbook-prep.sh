#!/usr/bin/env bash

PLAYBOOK=$1
ENGINE=$2
ENGINE_MAJ_VERSION=$3
ENGINE_VERSION=$4

ansible-playbook --connection=local -i /opt/omnia/infrastructure/plugins/inventory $PLAYBOOK -e engine=$ENGINE -e engine_major_version=$ENGINE_MAJ_VERSION -e engine_version=$ENGINE_VERSION