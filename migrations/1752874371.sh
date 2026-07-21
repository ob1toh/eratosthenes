echo "Add Catppuccin Latte light theme"

if [[ ! -L $HOME/.config/eratosthenes/themes/catppuccin-latte ]]; then
  ln -snf ~/.local/share/eratosthenes/themes/catppuccin-latte ~/.config/eratosthenes/themes/
fi
