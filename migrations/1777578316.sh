echo "Rename screen recording command"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"

if [[ -f $WAYBAR_CONFIG ]] && grep -q 'eratosthenes-capture-screencording' "$WAYBAR_CONFIG"; then
  sed -i 's/eratosthenes-capture-screencording/eratosthenes-capture-screenrecording/g' "$WAYBAR_CONFIG"
  eratosthenes-restart-waybar
fi
