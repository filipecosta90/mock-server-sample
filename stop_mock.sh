#!/bin/bash
##################################
# TO mock
# /v3/customers/g_[0-9]+/benefits
##################################
ports = [9015]
for port in ports; do
echo $port
done
docker stop `docker ps | grep 9015 | awk '{print $1}'`

