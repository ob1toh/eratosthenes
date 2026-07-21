# Copy over Eratosthenes configs, backing up originals
backup_dir="$HOME/.config/eratosthenes-backup-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$backup_dir"

for item in "$ERATOSTHENES_PATH/config/"*; do
  name=$(basename "$item")
  target="$HOME/.config/$name"
  if [[ -e $target ]] && [[ ! -L $target ]]; then
    cp -r "$target" "$backup_dir/"
  fi
done

cp -R "$ERATOSTHENES_PATH/config/"* "$HOME/.config/"

# Use default bashrc from Eratosthenes
cp "$ERATOSTHENES_PATH/default/bashrc" "$HOME/.bashrc"
