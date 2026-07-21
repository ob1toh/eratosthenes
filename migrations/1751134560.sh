echo "Add UWSM env"

export ERATOSTHENES_PATH="$HOME/.local/share/eratosthenes"
export PATH="$ERATOSTHENES_PATH/bin:$PATH"

mkdir -p "$HOME/.config/uwsm/"
cat <<EOF | tee "$HOME/.config/uwsm/env"
export ERATOSTHENES_PATH=$HOME/.local/share/eratosthenes
export PATH=$ERATOSTHENES_PATH/bin/:$PATH
EOF

# Ensure we have the latest repos and are ready to pull
eratosthenes-update-keyring
eratosthenes-refresh-pacman
sudo systemctl restart systemd-timesyncd
sudo pacman -Sy # Normally not advisable, but we'll do a full -Syu before finishing

mkdir -p ~/.local/state/eratosthenes/migrations
touch ~/.local/state/eratosthenes/migrations/1751134560.sh

# Remove old AUR packages to prevent a super lengthy build on old Eratosthenes installs
eratosthenes-pkg-drop zoom qt5-remoteobjects wf-recorder wl-screenrec

# Get rid of old AUR packages
bash $ERATOSTHENES_PATH/migrations/1756060611.sh
touch ~/.local/state/eratosthenes/migrations/1756060611.sh

bash eratosthenes-update-perform
