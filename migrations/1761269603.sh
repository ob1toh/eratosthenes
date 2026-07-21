echo "Add right-click terminal action to waybar eratosthenes menu icon"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"

if [[ -f $WAYBAR_CONFIG ]] && ! grep -A5 '"custom/eratosthenes"' "$WAYBAR_CONFIG" | grep -q '"on-click-right"'; then
  sed -i '/"on-click": "eratosthenes-menu",/a\    "on-click-right": "eratosthenes-launch-terminal",' "$WAYBAR_CONFIG"
fi
