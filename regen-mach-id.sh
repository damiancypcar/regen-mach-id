#!/usr/bin/env bash
# ----------------------------------------------------------
# Author:          damiancypcar
# Modified:        10.03.2023
# Version:         2.0
# Desc:            Regenerate Machine ID
# ----------------------------------------------------------

set -euo pipefail

# shellcheck disable=SC2046
if [ $(id -u) -ne 0 ]; then
    echo "You must be ROOT to run this script"
    exit 1
fi

rm -v /etc/machine-id
systemd-machine-id-setup
echo "Done. Please reboot the system."
