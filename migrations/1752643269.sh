echo "Add new matte black theme"

if [[ ! -L $HOME/.config/eratosthenes/themes/matte-black ]]; then
  ln -snf ~/.local/share/eratosthenes/themes/matte-black ~/.config/eratosthenes/themes/
fi
