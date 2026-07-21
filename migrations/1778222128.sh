echo "Add sample post-boot hook"

mkdir -p ~/.config/eratosthenes/hooks/post-boot.d

if [[ ! -f ~/.config/eratosthenes/hooks/post-boot.d/weather.sample ]]; then
  cp "$ERATOSTHENES_PATH/config/eratosthenes/hooks/post-boot.d/weather.sample" ~/.config/eratosthenes/hooks/post-boot.d/weather.sample
fi
