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

pkg.uninstall() {
    # Uninstall utils
    uninstallUtils
}

installUtils() {
    # Install htpasswd utility
    sudo apt-get install -y apache2-utils
}

uninstallUtils() {
    # Uninstall htpasswd utility
    sudo apt-get remove -y apache2-utils
}