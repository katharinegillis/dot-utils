#!/usr/bin/env bash

SYSTEM=$3

if [ "$SYSTEM" != "mac" ]; then
    # Uninstall htpasswd utility
    sudo apt-get remove -y apache2-utils
fi