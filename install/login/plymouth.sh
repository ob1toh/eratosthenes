if [[ $(plymouth-set-default-theme) != "eratosthenes" ]]; then
  sudo cp -r "$HOME/.local/share/eratosthenes/default/plymouth" /usr/share/plymouth/themes/eratosthenes/
  sudo plymouth-set-default-theme eratosthenes
fi
