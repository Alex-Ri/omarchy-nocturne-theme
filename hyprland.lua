-- Nocturne Hyprland look-and-feel (generated for hand-written/local use).
-- Ships rounded corners, tight gaps, and gentle ease-based animations.

hl.config({
  general = {
    col = {
      active_border = "rgba(a8b0c0ee)",
      inactive_border = "rgba(262626ee)",
    },
    border_size = 1,
    gaps_in = 3,
    gaps_out = 5,
  },
  decoration = {
    rounding = 6,
    active_opacity = 0.94,
    inactive_opacity = 0.90,
    fullscreen_opacity = 1.0,
    shadow = {
      enabled = false,
    },
    blur = {
      enabled = true,
      size = 6,
      passes = 3,
      noise = 0.02,
      contrast = 1.0,
      brightness = 1.0,
      vibrancy = 0.25,
      vibrancy_darkness = 0.2,
      ignore_opacity = true,
      new_optimizations = true,
      xray = false,
    },
  },
  animations = {
    enabled = true,
  },
})

-- Frosted-glass layer rules: blur what shows through the translucent shell
-- surfaces (bar, launcher/menus, notifications, popouts).
hl.layer_rule({ match = { namespace = "omarchy-bar" }, blur = true, ignore_alpha = 0 })
hl.layer_rule({ match = { namespace = "^(omarchy-menu|omarchy-image-selector|omarchy-emojis|omarchy-clipboard|omarchy-keyboard-panel|omarchy-notifications)$" }, blur = true, ignore_alpha = 0 })

-- Frosted-glass terminal windows: translucent + blurred backdrop. (Global
-- blur applies to any window rendered below opacity 1; no separate rule needed.)
o.window({ class = "^(foot|Alacritty|kitty|com.mitchellh.ghostty)$" }, { opacity = "0.92 0.88" })

-- Frosted-glass apps: browsers and web PWAs like WhatsApp.
o.window({ class = "^(zen|google-chrome|chromium|brave|firefox|Zen)$" }, { opacity = "0.95 0.9" })
o.window({ class = "^chrome-web\\.whatsapp\\.com__-Default$" }, { opacity = "0.95 0.9" })

hl.curve("easeOut", { type = "bezier", points = { { 0.25, 0.46 }, { 0.45, 0.94 } } })
hl.curve("easeInOut", { type = "bezier", points = { { 0.8, 0 }, { 0.2, 1 } } })

hl.animation({
  leaf = "windows",
  enabled = true,
  speed = 3.0,
  bezier = "easeOut",
})
hl.animation({
  leaf = "windowsIn",
  enabled = true,
  speed = 2.8,
  bezier = "easeOut",
})
hl.animation({
  leaf = "windowsOut",
  enabled = true,
  speed = 2.6,
  bezier = "easeInOut",
})
hl.animation({
  leaf = "windowsMove",
  enabled = true,
  speed = 3.0,
  bezier = "easeOut",
})
hl.animation({
  leaf = "fade",
  enabled = true,
  speed = 2.4,
  bezier = "easeInOut",
})
hl.animation({
  leaf = "border",
  enabled = true,
  speed = 3.0,
  bezier = "easeOut",
})
hl.animation({
  leaf = "borderangle",
  enabled = true,
  speed = 3.0,
  bezier = "easeOut",
})
hl.animation({
  leaf = "workspaces",
  enabled = true,
  speed = 3.4,
  bezier = "easeOut",
  style = "fade",
})
