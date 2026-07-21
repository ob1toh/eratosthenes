echo "Make hackerman available as new theme"

if [[ ! -L ~/.config/eratosthenes/themes/hackerman ]]; then
  rm -rf ~/.config/eratosthenes/themes/hackerman
  ln -nfs ~/.local/share/eratosthenes/themes/hackerman ~/.config/eratosthenes/themes/
fi
