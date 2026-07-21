# Setup branding directory with ASCII art logo
mkdir -p ~/.config/eratosthenes/branding

LOGO_SOURCE="$ERATOSTHENES_PATH/default/branding/logo.txt"
if [[ -f $LOGO_SOURCE ]]; then
  cp -f "$LOGO_SOURCE" ~/.config/eratosthenes/branding/logo.txt
fi

ABOUT_SOURCE="$ERATOSTHENES_PATH/default/branding/about.txt"
if [[ -f $ABOUT_SOURCE ]]; then
  cp -f "$ABOUT_SOURCE" ~/.config/eratosthenes/branding/about.txt
fi
