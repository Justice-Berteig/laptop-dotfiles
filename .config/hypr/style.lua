-----------
-- STYLE --
-----------

-- Source colours
require("colours")

hl.config({
  general = {
    gaps_in  = 4,
    gaps_out = 4,

    border_size = 3,

    col = {
      active_border   = dark_blue,
      inactive_border = bg0,
    },

    resize_on_border = false,

    allow_tearing = false,

    layout = "dwindle",
  },

  decoration = {
    rounding       = 3,
    rounding_power = 10,

    active_opacity   = 0.92,
    inactive_opacity = 0.67,

    shadow = {
      enabled      = false,
      range        = 4,
      render_power = 3,
      color        = bg1,
    },

    blur = {
      enabled  = true,
      size     = 10,
      passes   = 3,
      vibrancy = 0.14,
    },
  },

  animations = {
    enabled = true,
  },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})
