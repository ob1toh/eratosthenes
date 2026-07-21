echo "Make ethereal available as new theme"

if [[ ! -L ~/.config/eratosthenes/themes/ethereal ]]; then
  rm -rf ~/.config/eratosthenes/themes/ethereal
  ln -nfs ~/.local/share/eratosthenes/themes/ethereal ~/.config/eratosthenes/themes/
fi
