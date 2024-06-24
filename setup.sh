#!/bin/bash
set -eo pipefail

sudo apt update -y && sudo apt upgrade -y
sudo apt install python3-venv python3-pip git-all pipx -y
pipx install ansible-core
pipx ensurepath
# sudo sh -c 'echo "eval \$(register-python-argcomplete3 pipx)" >> /etc/profile'
# source /etc/profile

source ~/.bashrc