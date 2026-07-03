-------------
-- STARTUP --
-------------

hl.on("hyprland.start", function ()
  -- Startup services
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("waybar")
  hl.exec_cmd("swaync")

  -- Clipboard history stuff
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")

  -- Launch apps
  hl.exec_cmd(TERMINAL .. " --app-id=specialbtop -e btop", { workspace = "special:specialbtop silent" })
  hl.exec_cmd("discord"                                  , { workspace = "1" })
  hl.exec_cmd("spotify-launcher"                         , { workspace = "1" })
  hl.exec_cmd("firefox"                                  , { workspace = "2" })
end)
