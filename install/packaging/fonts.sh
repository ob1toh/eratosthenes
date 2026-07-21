# Eratosthenes logo in a font for Waybar use
mkdir -p "$HOME/.local/share/fonts"
cp "$ERATOSTHENES_PATH/config/eratosthenes.ttf" "$HOME/.local/share/fonts/"
fc-cache 2>/dev/null || true
