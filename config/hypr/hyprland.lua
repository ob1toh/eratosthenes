-- Learn how to configure Hyprland: https://wiki.hypr.land/Configuring/Start/

-- Load user modules from ~/.config and Eratosthenes defaults from $ERATOSTHENES_PATH.
package.path = os.getenv("HOME")
  .. "/.config/?.lua;"
  .. (os.getenv("ERATOSTHENES_PATH") or (os.getenv("HOME") .. "/.local/share/eratosthenes"))
  .. "/?.lua;"
  .. package.path

-- All Eratosthenes default setups
require("default.hypr.eratosthenes")

-- Change your own setup in these files and override defaults.
require("hypr.monitors")
require("hypr.input")
require("hypr.bindings")
require("hypr.looknfeel")
require("hypr.autostart")

-- Toggle config flags dynamically.
require("default.hypr.toggles")

-- Add any other personal Hyprland configuration below.
-- o.window("qemu", { workspace = "5" })
