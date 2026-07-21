echo "Allow updating of timezone by right-clicking on the clock (or running eratosthenes-cmd-tzupdate)"

if eratosthenes-cmd-missing tzupdate; then
  bash "$ERATOSTHENES_PATH/install/config/timezones.sh"
  eratosthenes-refresh-waybar
fi
