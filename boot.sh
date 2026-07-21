#!/bin/bash

# Set install mode to online since boot.sh is used for curl/git installations
export ERATOSTHENES_ONLINE_INSTALL=true

echo "==> eratosthenes dotfiles installer"
echo ""

ERATOSTHENES_REPO="${ERATOSTHENES_REPO:-ob1toh/eratosthenes}"
ERATOSTHENES_REF="${ERATOSTHENES_REF:-master}"

# Use custom branch if instructed, otherwise default to master
ERATOSTHENES_REF="${ERATOSTHENES_REF:-master}"

sudo pacman -Syu --noconfirm --needed git

echo -e "\nCloning eratosthenes from: https://github.com/${ERATOSTHENES_REPO}.git"
rm -rf ~/.local/share/eratosthenes/
git clone "https://github.com/${ERATOSTHENES_REPO}.git" ~/.local/share/eratosthenes >/dev/null

echo -e "\e[32mUsing branch: $ERATOSTHENES_REF\e[0m"
cd ~/.local/share/eratosthenes
git fetch origin "${ERATOSTHENES_REF}" && git checkout "${ERATOSTHENES_REF}"
cd -

echo -e "\nInstallation starting..."
source ~/.local/share/eratosthenes/install.sh
