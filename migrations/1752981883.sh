echo "Replace wofi with walker as the default launcher"

if eratosthenes-cmd-missing walker; then
  eratosthenes-pkg-add walker-bin libqalculate

  eratosthenes-pkg-drop wofi
  rm -rf ~/.config/wofi

  mkdir -p ~/.config/walker
  cp -r ~/.local/share/eratosthenes/config/walker/* ~/.config/walker/
fi
