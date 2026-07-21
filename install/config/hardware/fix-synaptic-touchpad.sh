# Enable Synaptics InterTouch for confirmed touchpads if not already loaded

if grep -qi synaptics /proc/bus/input/devices 2>/dev/null \
   && ! lsmod 2>/dev/null | grep -q '^psmouse'; then
    sudo modprobe psmouse synaptics_intertouch=1 2>/dev/null || true
fi