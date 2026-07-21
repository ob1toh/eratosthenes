# Disable USB autosuspend to prevent peripheral disconnection issues.
# Skip on battery-powered systems to avoid unnecessary power drain.
if ! eratosthenes-battery-present 2>/dev/null; then
  if [[ ! -f /etc/modprobe.d/disable-usb-autosuspend.conf ]]; then
    echo "options usbcore autosuspend=-1" | sudo tee /etc/modprobe.d/disable-usb-autosuspend.conf
  fi
fi

