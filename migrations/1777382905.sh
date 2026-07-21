echo "Use interactive unlock (Plymouth) selector menu"

mkdir -p ~/.config/elephant/menus
ln -snf $ERATOSTHENES_PATH/default/elephant/eratosthenes_unlocks.lua ~/.config/elephant/menus/eratosthenes_unlocks.lua
eratosthenes-restart-walker
