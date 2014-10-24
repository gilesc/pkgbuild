post_install() {
    systemctl daemon-reload
}

post_upgrade() {
    systemctl daemon-reload
    systemctl try-restart glancesd
}

pre_remove() {
    systemctl stop glancesd
}

post_remove() {
    systemctl daemon-reload
}
