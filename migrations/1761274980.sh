echo "Migrate to proper packages for localsend and asdcontrol"

if eratosthenes-pkg-present localsend-bin; then
  eratosthenes-pkg-drop localsend-bin
  eratosthenes-pkg-add localsend
fi

if eratosthenes-pkg-present asdcontrol-git; then
  eratosthenes-pkg-drop asdcontrol-git
  eratosthenes-pkg-add asdcontrol
fi
