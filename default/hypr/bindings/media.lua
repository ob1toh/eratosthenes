-- Volume, brightness, keyboard backlight, and touchpad controls.
o.bind("XF86AudioRaiseVolume", "Volume up", "eratosthenes-swayosd-client --output-volume raise", { locked = true, repeating = true })
o.bind("XF86AudioLowerVolume", "Volume down", "eratosthenes-swayosd-client --output-volume lower", { locked = true, repeating = true })
o.bind("XF86AudioMute", "Mute", "eratosthenes-swayosd-client --output-volume mute-toggle", { locked = true, repeating = true })
o.bind("XF86AudioMicMute", "Mute microphone", "eratosthenes-audio-input-mute", { locked = true, repeating = true })
o.bind("XF86MonBrightnessUp", "Brightness up", "eratosthenes-brightness-display +5%", { locked = true, repeating = true })
o.bind("XF86MonBrightnessDown", "Brightness down", "eratosthenes-brightness-display 5%-", { locked = true, repeating = true })
o.bind("SHIFT + XF86MonBrightnessUp", "Brightness maximum", "eratosthenes-brightness-display 100%", { locked = true, repeating = true })
o.bind("SHIFT + XF86MonBrightnessDown", "Brightness minimum", "eratosthenes-brightness-display 1%", { locked = true, repeating = true })
o.bind("XF86KbdBrightnessUp", "Keyboard brightness up", "eratosthenes-brightness-keyboard up", { locked = true, repeating = true })
o.bind("XF86KbdBrightnessDown", "Keyboard brightness down", "eratosthenes-brightness-keyboard down", { locked = true, repeating = true })
o.bind("XF86KbdLightOnOff", "Keyboard backlight cycle", "eratosthenes-brightness-keyboard cycle", { locked = true })
o.bind("XF86TouchpadToggle", "Toggle touchpad", "eratosthenes-toggle-touchpad", { locked = true })
o.bind("XF86TouchpadOn", "Enable touchpad", "eratosthenes-toggle-touchpad on", { locked = true })
o.bind("XF86TouchpadOff", "Disable touchpad", "eratosthenes-toggle-touchpad off", { locked = true })

-- Precise volume and brightness controls.
o.bind("ALT + XF86AudioRaiseVolume", "Volume up precise", "eratosthenes-swayosd-client --output-volume +1", { locked = true, repeating = true })
o.bind("ALT + XF86AudioLowerVolume", "Volume down precise", "eratosthenes-swayosd-client --output-volume -1", { locked = true, repeating = true })
o.bind("ALT + XF86MonBrightnessUp", "Brightness up precise", "eratosthenes-brightness-display +1%", { locked = true, repeating = true })
o.bind("ALT + XF86MonBrightnessDown", "Brightness down precise", "eratosthenes-brightness-display 1%-", { locked = true, repeating = true })

-- Media controls.
o.bind("XF86AudioNext", "Next track", "eratosthenes-swayosd-client --playerctl next", { locked = true })
o.bind("XF86AudioPause", "Pause", "eratosthenes-swayosd-client --playerctl play-pause", { locked = true })
o.bind("XF86AudioPlay", "Play", "eratosthenes-swayosd-client --playerctl play-pause", { locked = true })
o.bind("XF86AudioPrev", "Previous track", "eratosthenes-swayosd-client --playerctl previous", { locked = true })

o.bind("SUPER + XF86AudioMute", "Switch audio output", "eratosthenes-audio-output-switch", { locked = true })
