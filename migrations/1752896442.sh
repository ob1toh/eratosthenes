echo "Replace volume control GUI with a TUI"

if eratosthenes-cmd-missing wiremix; then
  eratosthenes-pkg-add wiremix
  eratosthenes-pkg-drop pavucontrol
  eratosthenes-refresh-applications
  eratosthenes-refresh-waybar
fi
