echo "Add minimal starship prompt to terminal"

if eratosthenes-cmd-missing starship; then
  eratosthenes-pkg-add starship
  cp $ERATOSTHENES_PATH/config/starship.toml ~/.config/starship.toml
fi
