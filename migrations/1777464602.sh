echo "Update Waybar screen recording command"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"

if [[ -f $WAYBAR_CONFIG ]] && grep -q 'eratosthenes-cmd-screenrecord' "$WAYBAR_CONFIG"; then
  sed -i 's/eratosthenes-cmd-screenrecord/eratosthenes-capture-screenrecording/g' "$WAYBAR_CONFIG"
  eratosthenes-restart-waybar
fi
