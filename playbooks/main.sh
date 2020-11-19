#!/bin/sh

cd /home/ubuntu/ansible-demo/input/
#helm install demochat /home/ubuntu/environment/kamal/ansible-demo/inputs/*.tgz
helm install demochat
echo 'success'
