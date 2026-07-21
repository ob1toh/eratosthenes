# eratosthenes

Aesthetic, dynamic Arch Linux Hyprland dotfiles.

## Prerequisites

- **Vanilla Arch Linux** (x86_64) — not an Arch derivative
- **Btrfs root filesystem**
- **Limine bootloader**
- **Secure Boot disabled** in firmware
- A non-root user account with sudo access

## Installation

### Quick install (from Arch Linux ISO or installed system)

```bash
curl -fsSL https://raw.githubusercontent.com/ob1toh/eratosthenes/master/boot.sh | bash
```

### Manual install

```bash
git clone https://github.com/ob1toh/eratosthenes.git ~/.local/share/eratosthenes
source ~/.local/share/eratosthenes/install.sh
```

## Keybinds

| Keys | Action |
|------|--------|
| `Super + Return` | Terminal |
| `Super + Space` | Application launcher |
| `Super + K` | Keybind cheatsheet |
| `Super + Alt + Space` | Eratosthenes menu |
| `Super + Q` | Close focused window |

See `Super + K` for the full list.

## License

MIT
