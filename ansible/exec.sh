#!/bin/bash

ansible-galaxy install -r roles/requirements.yml -p roles --force
ansible-playbook -i localhost setup.yml -b
