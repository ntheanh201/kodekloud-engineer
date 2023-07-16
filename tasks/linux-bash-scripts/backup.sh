#!/bin/bash

zip -r xfusioncorp_media.zip /var/www/html/media
mv xfusioncorp_media.zip /backup/xfusioncorp_media.zip

sudo yum install -y sshpass rsync

ssh-keygen -t rsa -b 4096 -f "/home/steve/.ssh/id_rsa" -q -N ""
sshpass -p H@wk3y3 ssh-copy-id -i "/home/steve/.ssh/id_rsa.pub" clint@172.16.238.16 -f -o StrictHostKeyChecking=no

rsync -avzh /backup/xfusioncorp_media.zip clint@172.16.238.16:/backup/