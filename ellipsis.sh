#!/usr/bin/env bash

pkg.install() {
    # Install utils
    installUtils
}

pkg.pull() {
    # Pull down updates
    git.pull

    # Install utils
    installUtils
}

installUtils() {
    # Install htpasswd utility
    sudo apt-get install -y apache2-utils
}