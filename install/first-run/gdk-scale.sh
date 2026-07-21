# Set the default GDK_SCALE from what the monitor is currently reporting
# The monitors config is in Lua format — the scale value is in a variable assignment.

MONITORS_LUA="$HOME/.config/hypr/monitors.lua"
if [[ -f $MONITORS_LUA ]]; then
  SCALE=$(eratosthenes-hyprland-monitor-scale 2>/dev/null || echo 1)
  sed -i -E "s/^(local eratosthenes_gdk_scale = ).*/\1$SCALE/" "$MONITORS_LUA"
fi
