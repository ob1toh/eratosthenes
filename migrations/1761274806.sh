echo "Ensure node is available via mise (for treesitter cli)"

if eratosthenes-cmd-missing node; then
  mise use -g node@latest
fi
