#!/usr/bin/env bash

pkg.link() {
    fs.link_files files
}

pkg.install() {
    # Install utils
    bash $PKG_PATH/run.sh "$ELLIPSIS_SRC"
}

pkg.pull() {
    # Check for updates on git
    git remote update 2>&1 > /dev/null
    if git.is_behind; then
        # Pull down updates
        git.pull
    fi

    # Install utils
    bash $PKG_PATH/run.sh "$ELLIPSIS_SRC"
}

pkg.uninstall() {
    # Uninstall utils
    bash $PKG_PATH/uninstall.sh "$ELLIPSIS_SRC"
}
