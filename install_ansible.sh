#!/bin/bash

sudo yum install epel-next-release -y

sudo yum install ansible -y

export ANSIBLE_HOST_KEY_CHECKING=False