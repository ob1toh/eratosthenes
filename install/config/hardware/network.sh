# Ensure iwd service will be started (only if iwd is installed)
if command -v iwd &>/dev/null || pacman -Q iwd &>/dev/null 2>&1; then
  sudo systemctl enable iwd.service
fi

# Prevent systemd-networkd-wait-online timeout on boot
sudo systemctl disable systemd-networkd-wait-online.service 2>/dev/null || true
sudo systemctl mask systemd-networkd-wait-online.service 2>/dev/null || true
