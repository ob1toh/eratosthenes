# Install yay AUR helper from latest GitHub release
if ! command -v yay &>/dev/null; then
  echo "Installing yay from latest GitHub release..."
  cd /tmp
  YAY_URL=$(curl -fsSL https://api.github.com/repos/Jguer/yay/releases/latest | grep "browser_download_url.*x86_64.tar.gz" | cut -d'"' -f4)
  if [[ -z $YAY_URL ]]; then
    echo "Failed to fetch latest yay release URL" >&2
    exit 1
  fi
  curl -fsSL -o yay.tar.gz "$YAY_URL"
  tar xzf yay.tar.gz
  YAY_DIR=$(tar tzf yay.tar.gz | head -1 | cut -d'/' -f1)
  sudo cp "$YAY_DIR/yay" /usr/local/bin/
  rm -rf yay.tar.gz "$YAY_DIR"
  echo "yay installed successfully"
fi
