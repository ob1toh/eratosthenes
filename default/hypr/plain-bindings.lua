require("default.hypr.bindings.media")
require("default.hypr.bindings.clipboard")
require("default.hypr.bindings.tiling-v2")
require("default.hypr.bindings.utilities")

-- Application bindings without Eratosthenes's preinstalled web apps, TUIs, or desktop apps.
o.bind("SUPER + RETURN", "Terminal", { eratosthenes = "terminal" })
o.bind("SUPER + SHIFT + RETURN", "Browser", { eratosthenes = "browser" })
o.bind("SUPER + SHIFT + F", "File manager", { eratosthenes = "nautilus" })
o.bind("SUPER + ALT + SHIFT + F", "File manager (cwd)", { eratosthenes = "nautilus-cwd" })
o.bind("SUPER + SHIFT + B", "Browser", { eratosthenes = "browser" })
o.bind("SUPER + SHIFT + ALT + B", "Browser (private)", { eratosthenes = "browser --private" })
o.bind("SUPER + SHIFT + N", "Editor", { eratosthenes = "editor" })
