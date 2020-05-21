#!/bin/bash

# Ensure we have a virtualenv for Ansible
sudo apt-get install -y python3-virtualenv
[[ -d ".env" ]] || python3 -m virtualenv -p python3 .env
.env/bin/pip install -U pip ansible

# Ensure we have this gist cloned
SETUP_DIR="Development/chromeos-setup"
[[ -d "$SETUP_DIR" ]] || git clone https://github.com/dstanek/chromeos-setup.git $SETUP_DIR
