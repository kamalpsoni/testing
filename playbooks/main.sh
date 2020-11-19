#!/bin/sh
cd /home/ubuntu/tmp/
tar zxvf demochat-0.1.0.tgz
helm install demochat --generate-name
echo 'success'


