echo "Fix JetBrains font setting"

if [[ $(eratosthenes-font-current) == JetBrains* ]]; then
  eratosthenes-font-set "JetBrainsMono Nerd Font"
fi
