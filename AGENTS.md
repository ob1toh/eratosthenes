# Style

- Two spaces for indentation, no tabs
- Use bash 5 conditionals: use `[[ ]]` for string/file tests and `(( ))` for numeric tests
- In `[[ ]]`, don't quote variables, but do quote string literals when comparing values (e.g., `[[ $branch == "dev" ]]`)
- Prefer `(( ))` over numeric operators inside `[[ ]]` (e.g., `(( count < 50 ))`, not `[[ $count -lt 50 ]]`)
- For strings/paths with spaces, quote them instead of escaping spaces with `\ ` (e.g., `"$APP_DIR/Disk Usage.desktop"`, not `$APP_DIR/Disk\ Usage.desktop`)
- Shebangs must use `#!/bin/bash` consistently (never `#!/usr/bin/env bash`)
- Scripts under `install/` and `migrations/` may be sourced and intentionally omit shebangs

# Status
- Repo (R2) working: all 123 packages signed, DB with sig verification
- Custom domain pkgs.trevorndlovu.com configured, working via Cloudflare proxy
- eratosthenes-keyring package created and tested (installs GPG key, populates pacman-key)
- GPG signing active: SigLevel = Required DatabaseOptional
- eratosthenes-iso repo created at github.com/ob1toh/eratosthenes-iso (forked from omarchy-iso)
- Full install flow tested in Docker: repo sync → keyring → package install → all passing

# What's Left
- CI pipeline for eratosthenes-pkgs auto-build
- DNS may still need nameserver update at Fasthosts for pkgs.trevorndlovu.com

# Branding Done
- ASCII art logo created (61x23 chars, based on Eratosthenes logo from logo.png)
- Default branding stored in default/branding/{logo.txt, about.txt, logo.png}
- about.txt (13 lines) used by fastfetch
- logo.txt displayed during installer (begin.sh → show_logo)
- bin/eratosthenes-show-logo displays the ASCII art
- install/config/branding.sh copies default branding to ~/.config/eratosthenes/branding/
- ISO configurator (configs/airootfs/root/configurator) shows logo via show_logo()
- Legacy oma files cleaned: oma.png removed, wallpapers renamed, URL fixed

# Command Naming

All commands start with `eratosthenes-`. Prefixes indicate purpose.

The authoritative command group list lives in `bin/eratosthenes` in `GROUP_DESCRIPTIONS`. Keep `GROUP_DESCRIPTIONS` updated when adding a new command prefix.

Common prefixes include:

- `cmd-` - check if commands exist, misc utility commands
- `capture-` - screenshots, screen recordings, and other capture tools
- `pkg-` - package management helpers
- `hw-` - hardware detection (return exit codes for use in conditionals)
- `refresh-` - copy default config to user's `~/.config/`
- `restart-` - restart a component
- `launch-` - open applications
- `install-` - install optional software
- `setup-` - interactive setup wizards
- `toggle-` - toggle features on/off
- `theme-` - theme management
- `update-` - update components

Other current prefixes include:

- `ac-`, `audio-`, `battery-`, `branch-`, `brightness-`, `channel-`, `config-`, `debug-`, `dev-`, `drive-`, `first-`, `font-`, `haptic-`, `hibernation-`, `hook-`, `hyprland-`, `menu-`, `migrate-`, `notification-`, `npx-`, `plymouth-`, `powerprofiles-`, `reinstall-`, `remove-`, `screensaver-`, `show-`, `snapshot-`, `state-`, `sudo-`, `swayosd-`, `system-`, `transcode-`, `tui-`, `tz-`, `upload-`, `version-`, `voxtype-`, `webapp-`, `wifi-`, `windows-`

# Command Metadata

Commands in `bin/` can declare CLI metadata in comments near the top of the file. `bin/eratosthenes` scans the first 80 lines, and tests expect command metadata to remain valid.

Supported metadata keys:

- `# eratosthenes:summary=...` - short help text
- `# eratosthenes:group=...` - command group when it differs from the filename-derived prefix
- `# eratosthenes:name=...` - command name within the group
- `# eratosthenes:args=...` - usage arguments
- `# eratosthenes:examples=...` - examples separated with ` | `
- `# eratosthenes:alias=...` / `# eratosthenes:aliases=...` - alternate routes
- `# eratosthenes:hidden=true` - hide from default command listings
- `# eratosthenes:requires-sudo=true` - mark commands that require sudo

Prefer explicit metadata for user-facing commands. Keep routes consistent with the filename unless there is a deliberate alias or compatibility route.

Example:

```bash
# eratosthenes:summary=Take a screenshot
# eratosthenes:group=capture
# eratosthenes:args=[smart|region|windows|fullscreen] [slurp|copy]
# eratosthenes:examples=eratosthenes screenshot | eratosthenes capture screenshot region
# eratosthenes:aliases=eratosthenes screenshot
```

# Install Scripts

Install entry points (`install.sh`, `boot.sh`) use `#!/bin/bash`. Many scripts under `install/` are sourced via `run_logged` and intentionally do not have shebangs.

Install stage files follow this pattern:

- `install/*/all.sh` lists scripts in execution order
- leaf scripts are sourced by `run_logged $ERATOSTHENES_INSTALL/path/to/script.sh`
- avoid `exit` in sourced install scripts unless intentionally aborting the install
- use `$ERATOSTHENES_INSTALL` and `$ERATOSTHENES_PATH` instead of hard-coded Eratosthenes paths
- keep hardware-specific logic under `install/config/hardware/`
- prefer helper commands for package and command checks where available

Raw `command -v`, `pacman`, and `pacman-key` are acceptable in bootstrap/preflight/package-helper contexts where the helper commands may not be available yet or where direct package-manager behavior is the point of the script.

# Helper Commands

Use these instead of raw shell commands:

- `eratosthenes-cmd-missing` / `eratosthenes-cmd-present` - check for commands
- `eratosthenes-pkg-missing` / `eratosthenes-pkg-present` - check for packages
- `eratosthenes-pkg-add` - install packages (handles both pacman and AUR)
- `eratosthenes-pkg-drop` - remove packages; use this instead of raw `pacman -R*`
- `eratosthenes-notification-send` - send desktop notifications; do not call `notify-send` directly
- `eratosthenes-hw-asus-rog` - detect ASUS ROG hardware (and similar `hw-*` commands)

Exceptions are allowed for bootstrap, preflight, migration, and package-helper scripts where the helper may not be available yet, where the helper itself is being implemented, or where direct package-manager behavior is required.

# Config Structure

- `config/` - default configs copied to `~/.config/`
- `default/themed/*.tpl` - templates with `{{ variable }}` placeholders for theme colors
- `themes/*/colors.toml` - theme color definitions (accent, background, foreground, color0-15)

# Visual Changes

When making visual changes, such as Waybar styles or desktop appearance, always take and analyze a screenshot after applying the change to verify the result. Use `eratosthenes capture screenshot fullscreen save` for fullscreen screenshots.

For interactive UI work, use `wtype` to simulate keyboard input when available. Example: start the UI in the background, wait briefly for focus, then run `wtype -k Right -k Return` to exercise keyboard selection and confirm the resulting command output or state change. Prefer this over manual-only verification when a UI returns a selected value or changes a symlink/config.

When testing layer-shell UI, capture the reference and candidate states as separate screenshots, then compare them visually before further edits. If a launched UI would otherwise remain open, keep track of its PID and stop it after the screenshot; avoid broad process kills unless checking with `ps` first.

# Refresh Pattern

To copy a default config to user config with automatic backup:

```bash
eratosthenes-refresh-config hypr/hyprlock.conf
```

This copies `~/.local/share/eratosthenes/config/hypr/hyprlock.conf` to `~/.config/hypr/hyprlock.conf`.

# Migrations

To create a new migration, run `eratosthenes-dev-add-migration --no-edit`. This creates a migration file named after the unix timestamp of the last commit.

New migration format:
- File permissions must be `0644` (`-rw-r--r--`); migrations are sourced, not executed directly
- No shebang line
- Start with an `echo` describing what the migration does
- Use `$ERATOSTHENES_PATH` to reference the eratosthenes directory
- Prefer helper commands such as `eratosthenes-cmd-present`, `eratosthenes-cmd-missing`, `eratosthenes-pkg-present`, and `eratosthenes-pkg-missing`

Some older migrations predate these rules. Do not copy older migrations that start with shebangs, omit the leading `echo`, or hard-code `~/.local/share/eratosthenes`.

Migrations may use raw `pacman`, `command -v`, or direct config edits when needed for historical compatibility or one-off repair work.

Example:
```bash
echo "Disable fingerprint in hyprlock if fingerprint auth is not configured"

if eratosthenes-cmd-missing fprintd-list || ! fprintd-list "$USER" 2>/dev/null | grep -q "finger"; then
  sed -i 's/fingerprint:enabled = .*/fingerprint:enabled = false/' ~/.config/hypr/hyprlock.conf
fi
```
