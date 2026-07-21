# Ensure that F-keys on Apple-like keyboards (such as Lofree Flow84) are always F-keys
# Only apply if hid_apple is available (Apple hardware or compatible keyboards)
if modinfo hid_apple &>/dev/null 2>&1; then
  if [[ ! -f /etc/modprobe.d/hid_apple.conf ]]; then
    echo "options hid_apple fnmode=2" | sudo tee /etc/modprobe.d/hid_apple.conf
  fi
fi
