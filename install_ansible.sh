#!/bin/bash

echo mjolnir123 | sudo -S yum install epel-next-release -y

sudo yum install ansible -y

export ANSIBLE_HOST_KEY_CHECKING=False