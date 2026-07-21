#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Auto-detect Eratosthenes path: use the directory containing this script, or
# fall back to ~/.local/share/eratosthenes for boot.sh / curl-pipe installs.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ -d $SCRIPT_DIR/bin && -d $SCRIPT_DIR/install ]]; then
  export ERATOSTHENES_PATH="$SCRIPT_DIR"
elif [[ -d $HOME/.local/share/eratosthenes/bin ]]; then
  export ERATOSTHENES_PATH="$HOME/.local/share/eratosthenes"
else
  echo "Error: Cannot find eratosthenes installation. Ensure install.sh is run from the repo or ~/.local/share/eratosthenes/" >&2
  exit 1
fi

export ERATOSTHENES_INSTALL="$ERATOSTHENES_PATH/install"
export ERATOSTHENES_INSTALL_LOG_FILE="/var/log/eratosthenes-install.log"
export PATH="$ERATOSTHENES_PATH/bin:$PATH"

# Create the log file early so the error trap doesn't fail on missing file
sudo touch "$ERATOSTHENES_INSTALL_LOG_FILE" 2>/dev/null || true

# Install
source "$ERATOSTHENES_INSTALL/helpers/all.sh"
source "$ERATOSTHENES_INSTALL/preflight/all.sh"
source "$ERATOSTHENES_INSTALL/packaging/all.sh"
source "$ERATOSTHENES_INSTALL/config/all.sh"
source "$ERATOSTHENES_INSTALL/login/all.sh"
source "$ERATOSTHENES_INSTALL/post-install/all.sh"
