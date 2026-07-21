echo "Ensure .config/hypr/looknfeel.lua is available"

if [[ ! -f ~/.config/hypr/looknfeel.lua ]]; then
  cp "$ERATOSTHENES_PATH/config/hypr/looknfeel.lua" ~/.config/hypr/looknfeel.lua
fi
