echo "Use Eratosthenes UWSM session without graphical.target startup wait"

sudo mkdir -p /usr/local/share/wayland-sessions
sudo cp "$ERATOSTHENES_PATH/default/wayland-sessions/eratosthenes.desktop" /usr/local/share/wayland-sessions/eratosthenes.desktop

if [[ -f /etc/sddm.conf.d/autologin.conf ]]; then
  sudo sed -i 's/^Session=hyprland-uwsm$/Session=eratosthenes/' /etc/sddm.conf.d/autologin.conf
fi
