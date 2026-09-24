------------------
-- WINDOW RULES --
------------------

-- Ignore maximize requrests from apps
hl.window_rule({
  name           = "suppress-maximize-events",
  match          = { class = ".*" },
  suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
    name     = "fix-xwayland-drags",
    match    = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

-- Rules for special btop workspace
hl.window_rule({
  name  = "btop-special-workspace",
  match = { class = "specialbtop" },
  float = true,
  size  = { "monitor_w*0.92", "monitor_h*0.92" },
  move  = { "monitor_w*0.04", "monitor_h*0.05" },
})

-- Force Discord to start in workspace 1
hl.window_rule({
  name             = "discord-starting-workspace",
  match            = { class = "discord" },
  workspace        = 1,
  no_initial_focus = true,
})

-- Force Spotify to start in workspace 1
hl.window_rule({
  name             = "spotify-starting-workspace",
  match            = { class = "spotify" },
  workspace        = 1,
  no_initial_focus = true,
})

-- Unset workspace because it was being forced into workspace 1 for some reason.
hl.window_rule({
  name             = "firefox-no-transparency",
  match            = { class = "firefox" },
  workspace        = "unset",
  no_initial_focus = false,
})

-- Make terminal slightly transparent even when active
hl.window_rule({
    name    = "terminal-active-transparency",
    match   = {
        class = "foot",
        focus = true,
    },
    opacity = "0.92 override",
})

-- Allow immediate mode rendering for games
hl.window_rule({
  name      = "allow-immediate-rednering",
  match     = { content = "game" },
  immediate = true,
})
