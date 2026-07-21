echo "Add sample low battery notification hook"

mkdir -p ~/.config/eratosthenes/hooks/battery-low.d

if [[ ! -f ~/.config/eratosthenes/hooks/battery-low.d/play-warning-sound.sample ]]; then
  cp "$ERATOSTHENES_PATH/config/eratosthenes/hooks/battery-low.d/play-warning-sound.sample" ~/.config/eratosthenes/hooks/battery-low.d/play-warning-sound.sample
fi
