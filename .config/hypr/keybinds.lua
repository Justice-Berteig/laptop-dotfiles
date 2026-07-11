--------------
-- KEYBINDS --
--------------

-- Set main mod key
local mainMod = "SUPER"

-- Applications
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(TERMINAL))
hl.bind(mainMod .. " + E"     , hl.dsp.exec_cmd(FILE_MANAGER))
hl.bind(mainMod .. " + SPACE" , hl.dsp.exec_cmd(LAUNCHER))

-- Core functionality
hl.bind(mainMod .. " + Q"        , hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch \"hl.dsp.exit()\""))
hl.bind(mainMod .. " + V"        , hl.dsp.window.float(     { action = "toggle" }))
hl.bind(mainMod .. " + F"        , hl.dsp.window.fullscreen({ mode="fullscreen", action = "toggle" }))
hl.bind(mainMod .. " + P"        , hl.dsp.window.pin(       { action = "toggle" }))
-- Duplicate terminal
hl.bind(mainMod .. " + D"        , hl.dsp.exec_cmd("~/.local/bin/foot-duplicate-cwd.sh"))

-- Clipboard
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("cliphist list | fuzzel --dmenu | cliphist decode | wl-copy"))

-- Screenshot
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("grim -g \"$(slurp -d)\" - | wl-copy"))

-- Notifications
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(NOTIFICATION_CENTER))

-- Move/resize with mouse
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Change focused window
hl.bind(mainMod .. " + left" , hl.dsp.focus({ direction = "left"  }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up"   , hl.dsp.focus({ direction = "up"    }))
hl.bind(mainMod .. " + down" , hl.dsp.focus({ direction = "down"  }))

hl.bind(mainMod .. " + H"    , hl.dsp.focus({ direction = "left"  }))
hl.bind(mainMod .. " + L"    , hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K"    , hl.dsp.focus({ direction = "up"    }))
hl.bind(mainMod .. " + J"    , hl.dsp.focus({ direction = "down"  }))

-- Move windows
hl.bind(mainMod .. " + SHIFT + left" , hl.dsp.window.move({ direction = "left"  }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up"   , hl.dsp.window.move({ direction = "up"    }))
hl.bind(mainMod .. " + SHIFT + down" , hl.dsp.window.move({ direction = "down"  }))

hl.bind(mainMod .. " + SHIFT + H"    , hl.dsp.window.move({ direction = "left"  }))
hl.bind(mainMod .. " + SHIFT + L"    , hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + K"    , hl.dsp.window.move({ direction = "up"    }))
hl.bind(mainMod .. " + SHIFT + J"    , hl.dsp.window.move({ direction = "down"  }))

-- Resize windows
hl.bind(mainMod .. " + ALT + left" , hl.dsp.window.resize({ x=-48, y=0   , relative=true }))
hl.bind(mainMod .. " + ALT + right", hl.dsp.window.resize({ x= 48, y=0   , relative=true }))
hl.bind(mainMod .. " + ALT + up"   , hl.dsp.window.resize({ x=0  , y=-48 , relative=true }))
hl.bind(mainMod .. " + ALT + down" , hl.dsp.window.resize({ x=0  , y= 48 , relative=true }))

hl.bind(mainMod .. " + ALT + H"    , hl.dsp.window.resize({ x=-48, y=0   , relative=true }))
hl.bind(mainMod .. " + ALT + L"    , hl.dsp.window.resize({ x= 48, y=0   , relative=true }))
hl.bind(mainMod .. " + ALT + K"    , hl.dsp.window.resize({ x=0  , y=-48 , relative=true }))
hl.bind(mainMod .. " + ALT + J"    , hl.dsp.window.resize({ x=0  , y= 48 , relative=true }))

-- Switch and move workspaces
for i = 1, 10 do
  local key = i % 10 -- 10 maps to key 0
  hl.bind(mainMod .. " + "         .. key, hl.dsp.focus(      { workspace = i }))
  hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i, follow = false }))
  hl.bind(mainMod .. " + CTRL + "  .. key, hl.dsp.window.move({ workspace = i, follow = true }))
end

-- Move through workspaces with scroll wheel
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up"  , hl.dsp.focus({ workspace = "e-1" }))

-- Special workspaces
hl.bind(mainMod .. " + S"        , hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind(mainMod .. " + CTRL + S" , hl.dsp.window.move({ workspace = "special:magic", follow = true }))

hl.bind(mainMod .. " + A"        , hl.dsp.workspace.toggle_special("specialbtop"))
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.window.move({ workspace = "special:specialbtop" }))
hl.bind(mainMod .. " + CTRL + A" , hl.dsp.window.move({ workspace = "special:specialbtop", follow = true }))

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume" , hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume" , hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-")     , { locked = true, repeating = true })
hl.bind("XF86AudioMute"        , hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle")    , { locked = true, repeating = true })
hl.bind("XF86AudioMicMute"     , hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle")  , { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp"  , hl.dsp.exec_cmd("brightnessctl -n2 set 5%+")                     , { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -n2 set 5%-")                     , { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext" , hl.dsp.exec_cmd("playerctl next")      , { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay" , hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev" , hl.dsp.exec_cmd("playerctl previous")  , { locked = true })
