#!/usr/bin/env bash
# Regenerate Machine ID

if [ $(id -u) = "0" ]; then
    # red color for root
    rm -v /etc/machine-id
    systemd-machine-id-setup
    echo "Done. Please reboot the system."
else
    # green color for regular user
    echo "Sorry, you must be a root."
fi
