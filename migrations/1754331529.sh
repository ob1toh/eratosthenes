echo "Update Waybar for new Eratosthenes menu"

if ! grep -q "" ~/.config/waybar/config.jsonc; then
  eratosthenes-refresh-waybar
fi
