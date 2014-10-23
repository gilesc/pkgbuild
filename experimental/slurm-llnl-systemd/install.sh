post_install() {
    systemctl daemon-reload
}

post_upgrade() {
    systemctl daemon-reload
}

pre_remove() {
    systemctl stop slurmd slurmctld
    systemctl disable slurmd slurmctld
}

post_remove() {
    systemcl daemon-reload
}
