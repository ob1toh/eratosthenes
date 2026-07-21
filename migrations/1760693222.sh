echo "Use explicit timezone selector when right-clicking on clock"

sed -i 's/eratosthenes-cmd-tzupdate/eratosthenes-launch-floating-terminal-with-presentation eratosthenes-tz-select/g' ~/.config/waybar/config.jsonc
