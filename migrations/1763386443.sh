echo "Uniquely identify terminal apps with custom app-ids using eratosthenes-launch-tui"

# Replace terminal -e calls with eratosthenes-launch-tui in bindings
sed -i 's/\$terminal -e \([^ ]*\)/eratosthenes-launch-tui \1/g' ~/.config/hypr/bindings.conf

# Update waybar to use eratosthenes-launch-or-focus with eratosthenes-launch-tui for TUI apps
sed -i 's|xdg-terminal-exec btop|eratosthenes-launch-or-focus-tui btop|' ~/.config/waybar/config.jsonc
sed -i 's|xdg-terminal-exec --app-id=com\.eratosthenes\.Wiremix -e wiremix|eratosthenes-launch-or-focus-tui wiremix|' ~/.config/waybar/config.jsonc
