#!/bin/bash
##################################
# TO mock
# /v3/customers/g_[0-9]+/benefits
##################################
docker run -d  -p 9015:1080 jamesdbloom/mockserver

# mock ao endpoint de health check
curl -X PUT http://localhost:9015/mockserver/expectation -H 'cache-control: no-cache' -H 'content-type: application/json' -d @monitoring_ping.json

# mock ao endpoint /v3/customers/g_[0-9]+/benefits
curl -X PUT http://localhost:9015/mockserver/expectation -H 'cache-control: no-cache' -H 'content-type: application/json' -d @customers_benefits.json

