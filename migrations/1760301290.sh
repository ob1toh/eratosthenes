echo "Add the new Flexoki Light theme"

if [[ ! -L ~/.config/eratosthenes/themes/flexoki-light ]]; then
  ln -nfs ~/.local/share/eratosthenes/themes/flexoki-light ~/.config/eratosthenes/themes/
fi
