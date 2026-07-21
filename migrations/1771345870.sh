echo "Switch lmstudio -> lmstudio-bin"

if pacman -Q lmstudio &>/dev/null; then
  eratosthenes-pkg-drop lmstudio
  eratosthenes-pkg-add lmstudio-bin
fi
