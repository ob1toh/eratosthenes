# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
# Run eratosthenes-restart-xcompose to apply changes

# Include fast emoji access
include "%H/.local/share/eratosthenes/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$ERATOSTHENES_USER_NAME"
<Multi_key> <space> <e> : "$ERATOSTHENES_USER_EMAIL"
EOF
