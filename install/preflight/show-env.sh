# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(ERATOSTHENES_CHROOT_INSTALL|ERATOSTHENES_ONLINE_INSTALL|ERATOSTHENES_USER_NAME|ERATOSTHENES_USER_EMAIL|USER|HOME|ERATOSTHENES_REPO|ERATOSTHENES_REF|ERATOSTHENES_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done
