# Install all base packages
mapfile -t packages < <(grep -v '^#' "$ERATOSTHENES_INSTALL/eratosthenes-base.packages" | grep -v '^$')
eratosthenes-pkg-add "${packages[@]}"
