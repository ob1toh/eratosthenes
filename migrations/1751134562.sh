echo "Ensure all indexes and packages are up to date"

eratosthenes-update-keyring
eratosthenes-refresh-pacman
sudo pacman -Syu --noconfirm
