echo "Replace buggy native Zoom client with webapp"

if eratosthenes-pkg-present zoom; then
  eratosthenes-pkg-drop zoom
  eratosthenes-webapp-install "Zoom" https://app.zoom.us/wc/home https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/zoom.png
fi
