#!/usr/bin/env bash

pkg.install() {
    # Install utils
    bash $PKG_PATH/run.sh "$ELLIPSIS_SRC"
}

pkg.pull() {
    # Pull down updates
    git.pull

    # Install utils
    bash $PKG_PATH/run.sh "$ELLIPSIS_SRC"
}

pkg.uninstall() {
    # Uninstall utils
    bash $PKG_PATH/uninstall.sh "$ELLIPSIS_SRC"
}