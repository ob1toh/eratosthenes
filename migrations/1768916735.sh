echo "Fix microphone gain and audio mixing on Asus ROG laptops"

source "$ERATOSTHENES_PATH/install/config/hardware/asus/fix-mic.sh"
source "$ERATOSTHENES_PATH/install/config/hardware/asus/fix-audio-mixer.sh"

if eratosthenes-hw-asus-rog; then
  eratosthenes-restart-pipewire
fi
