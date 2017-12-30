#!/bin/bash

ansible-galaxy install -p roles -r requirements.yml
ansible-playbook -i localhost, -b setup.yml
