------------------------
-- IMPORT OTHER FILES --
------------------------

require("animations")
require("applications")
require("env")
require("input")
require("keybinds")
require("monitors")
require("startup")
require("style")
require("window_rules")

-------------------
-- MISC SETTINGS --
-------------------

hl.config({
  misc = {
    disable_hyprland_logo      = true,
    force_default_wallpaper    = -1,
    initial_workspace_tracking = 2,
    middle_click_paste         = false,
  },
})
