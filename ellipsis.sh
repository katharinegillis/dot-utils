#!/usr/bin/env bash

pkg.install() {
    pkg.pull
}

pkg.pull() {
    echo -e "\e[32mUpdating utils...\e[0m"

    # Install htpasswd utility
    sudo apt-get install -y apache2-utils

    echo -e "\e[32mDone utils.\e[0m"
}
