#!/bin/bash

yc compute instance get yc-ubuntu-2204lts --format json | jq -r '.network_interfaces[0].primary_v4_address.one_to_one_nat.address'
