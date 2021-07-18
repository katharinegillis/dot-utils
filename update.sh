#!/usr/bin/env bash

SYSTEM=$3

if [ "$SYSTEM" != "mac" ]; then
    # Install htpasswd utility
    sudo apt-get install -y apache2-utils
fi