echo "Add opencode with system theming"

eratosthenes-pkg-add opencode

# Add config using eratosthenes theme by default
if [[ ! -f ~/.config/opencode/opencode.json ]]; then
  mkdir -p ~/.config/opencode
  cp $ERATOSTHENES_PATH/config/opencode/opencode.json ~/.config/opencode/opencode.json
fi
