echo "Show battery status notification on right-click of the waybar battery icon"

if ! grep -q 'eratosthenes-battery-status' ~/.config/waybar/config.jsonc; then
  sed -i '/"on-click": "eratosthenes-menu power",/a\    "on-click-right": "notify-send -u low \\"$(eratosthenes-battery-status)\\"",' ~/.config/waybar/config.jsonc
  eratosthenes-restart-waybar
fi
