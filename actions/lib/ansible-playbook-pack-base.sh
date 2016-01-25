#!/usr/bin/env bash

PLAYBOOK=$1

ansible-playbook --connection=local -i /opt/omnia/infrastructure/plugins/inventory $PLAYBOOK | tr '{{' '-'