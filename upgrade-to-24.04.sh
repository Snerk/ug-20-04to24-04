#!/bin/bash

set -e

echo "[*] Step 1: Updating Ubuntu 22.04 system..."
sudo apt update
sudo apt full-upgrade -y
sudo apt autoremove -y

echo "[*] Step 2: Confirming CLI-only setup..."
sudo sed -i 's/^Prompt=.*/Prompt=lts/' /etc/update-manager/release-upgrades

echo "[*] Step 3: Upgrading to Ubuntu 24.04 LTS..."
sudo do-release-upgrade

echo "[✓] Upgrade to 24.04 complete. Enjoy your clean CLI system!"
