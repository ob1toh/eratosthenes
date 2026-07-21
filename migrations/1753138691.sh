echo "Install swayOSD to show volume status"

if eratosthenes-cmd-missing swayosd-server; then
  eratosthenes-pkg-add swayosd
  setsid uwsm-app -- swayosd-server &>/dev/null &
fi
