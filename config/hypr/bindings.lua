-- Application bindings.
o.bind("SUPER + RETURN", "Terminal", { eratosthenes = "terminal" })
o.bind("SUPER + ALT + RETURN", "Tmux", { eratosthenes = "terminal-tmux" })
o.bind("SUPER + SHIFT + RETURN", "Browser", { eratosthenes = "browser" })
o.bind("SUPER + SHIFT + F", "File manager", { eratosthenes = "nautilus" })
o.bind("SUPER + ALT + SHIFT + F", "File manager (cwd)", { eratosthenes = "nautilus-cwd" })
o.bind("SUPER + SHIFT + B", "Browser", { eratosthenes = "browser" })
o.bind("SUPER + SHIFT + ALT + B", "Browser (private)", { eratosthenes = "browser --private" })
o.bind("SUPER + SHIFT + M", "Music", { eratosthenes = "or-focus spotify" })
o.bind("SUPER + SHIFT + ALT + M", "Music TUI", { tui = "cliamp", focus = true })
o.bind("SUPER + SHIFT + N", "Editor", { eratosthenes = "editor" })
o.bind("SUPER + SHIFT + D", "Docker", { tui = "lazydocker" })
o.bind("SUPER + SHIFT + G", "Signal", { launch = "signal-desktop", focus = "^signal$" })
o.bind("SUPER + SHIFT + O", "Obsidian", { launch = "obsidian", focus = "^obsidian$" })
o.bind("SUPER + SHIFT + W", "Typora", { launch = "typora --enable-wayland-ime" })
o.bind("SUPER + SHIFT + SLASH", "Passwords", { launch = "1password" })

-- Web app bindings.
o.bind("SUPER + SHIFT + A", "ChatGPT", { webapp = "https://chatgpt.com" })
o.bind("SUPER + SHIFT + ALT + A", "Grok", { webapp = "https://grok.com" })
o.bind("SUPER + SHIFT + C", "Calendar", { webapp = "https://app.hey.com/calendar/weeks/" })
o.bind("SUPER + SHIFT + E", "Email", { webapp = "https://app.hey.com" })
o.bind("SUPER + SHIFT + Y", "YouTube", { webapp = "https://youtube.com/" })
o.bind("SUPER + SHIFT + ALT + G", "WhatsApp", { webapp = "https://web.whatsapp.com/", focus = true })
o.bind("SUPER + SHIFT + CTRL + G", "Google Messages", { webapp = "https://messages.google.com/web/conversations", focus = true })
o.bind("SUPER + SHIFT + P", "Google Photos", { webapp = "https://photos.google.com/", focus = true })
o.bind("SUPER + SHIFT + S", "Google Maps", { webapp = "https://maps.google.com/", focus = true })
o.bind("SUPER + SHIFT + X", "X", { webapp = "https://x.com/" })
o.bind("SUPER + SHIFT + ALT + X", "X Post", { webapp = "https://x.com/compose/post" })

-- Add extra bindings below.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Overwrite existing bindings with hl.unbind() first if needed.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Eratosthenes menu", "eratosthenes-menu")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "eratosthenes-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, { eratosthenes = "walker -m symbols" })
