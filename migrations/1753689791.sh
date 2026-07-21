echo "Add the new ristretto theme as an option"

if [[ ! -L ~/.config/eratosthenes/themes/ristretto ]]; then
  ln -nfs ~/.local/share/eratosthenes/themes/ristretto ~/.config/eratosthenes/themes/
fi
