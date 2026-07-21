# Use the eratosthenes notification helper so notification handling is consistent
# (falls back to notify-send if the helper is not available)
if command -v eratosthenes-notification-send &>/dev/null; then
  eratosthenes-notification-send "    Learn Keybindings" "Super + K for cheatsheet.\nSuper + Space for application launcher.\nSuper + Alt + Space for Eratosthenes Menu." -u critical
else
  notify-send "    Learn Keybindings" "Super + K for cheatsheet.\nSuper + Space for application launcher.\nSuper + Alt + Space for Eratosthenes Menu." -u critical
fi
