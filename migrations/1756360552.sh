echo "Move Eratosthenes Package Repository after Arch core/extra/multilib and remove AUR"

eratosthenes-refresh-pacman
sudo pacman -Syu --noconfirm
