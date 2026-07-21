echo "Switch back to mainline chromium now that it supports full live theming"

if eratosthenes-pkg-present eratosthenes-chromium; then
  if gum confirm "Ready to switch to mainstream chromium? (Will close Chromium + reset settings)"; then
    pkill -x chromium
    eratosthenes-pkg-drop eratosthenes-chromium
    eratosthenes-pkg-add chromium
    eratosthenes-theme-set-browser
  fi
fi
