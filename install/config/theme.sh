# Setup user theme folder
mkdir -p "$HOME/.config/eratosthenes/themes"

# Chromium policy directory for theme
sudo mkdir -p /etc/chromium/policies/managed
sudo chmod a+rw /etc/chromium/policies/managed

# Set initial theme
eratosthenes-theme-set "Tokyo Night"
rm -rf "$HOME/.config/chromium/SingletonLock" # otherwise archiso will own the chromium singleton

# Set specific app links for current theme
mkdir -p "$HOME/.config/btop/themes"
ln -snf "$HOME/.config/eratosthenes/current/theme/btop.theme" "$HOME/.config/btop/themes/current.theme"

mkdir -p "$HOME/.config/mako"
ln -snf "$HOME/.config/eratosthenes/current/theme/mako.ini" "$HOME/.config/mako/config"

# Default Chromium to follow system appearance ("device") instead of dark
echo '{"browser":{"theme":{"color_scheme":0,"color_scheme2":0}}}' | sudo tee /usr/lib/chromium/initial_preferences >/dev/null
