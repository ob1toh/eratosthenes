echo "Replace bluetooth GUI with TUI"

eratosthenes-pkg-add bluetui
eratosthenes-pkg-drop blueberry

if ! grep -q "eratosthenes-launch-bluetooth" ~/.config/waybar/config.jsonc; then
  sed -i 's/blueberry/eratosthenes-launch-bluetooth/' ~/.config/waybar/config.jsonc
fi
