if command -v elephant &>/dev/null; then
  elephant service enable
  systemctl --user start elephant.service
fi
