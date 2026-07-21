echo "Use interactive background selector menu"

mkdir -p ~/.config/elephant/menus
ln -snf $ERATOSTHENES_PATH/default/elephant/eratosthenes_background_selector.lua ~/.config/elephant/menus/eratosthenes_background_selector.lua
eratosthenes-restart-walker
