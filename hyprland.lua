-- Nocturne Hyprland look-and-feel (generated for hand-written/local use).
-- Ships rounded corners, tight gaps, and gentle ease-based animations.

hl.config({
  general = {
    col = {
      active_border = "rgba(5E81ACee)",
      inactive_border = "rgba(262626ee)",
    },
    border_size = 1,
    gaps_in = 3,
    gaps_out = 5,
  },
  decoration = {
    rounding = 6,
    active_opacity = 0.97,
    inactive_opacity = 0.93,
    fullscreen_opacity = 1.0,
  },
  animations = {
    enabled = true,
  },
})

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
  speed = 2.4,
  bezier = "easeOut",
})
