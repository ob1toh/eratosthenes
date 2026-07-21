echo "Install Impala as new wifi selection TUI"

if eratosthenes-cmd-missing impala; then
  eratosthenes-pkg-add impala
  eratosthenes-refresh-waybar
fi
