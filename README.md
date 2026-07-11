My Arch Linux rice for my laptop.
![Wallpaper screenshot](/screenshots/screenshot1.png?raw=true)
![Terminal + file manager screenshot](/screenshots/screenshot2.png?raw=true)

# Setup

1. Make sure you have the following programs installed:
    - Fastfetch
    - foot
    - fuzzel
    - Hyprland
        - btop
        - cliphist
        - Discord
        - Firefox
        - grim
        - hyprpaper
        - Spotify (spotify-launcher)
        - SwayNotificationCenter (swaync)
        - uwsm
    - Neovim (nvim)
    - otf-font-awesome
    - Recursive Mono Nerd font (ttf-recursive-nerd)
    - Waybar
    - Yazi
2. Copy and paste everything from this repo's .config/ folder into your .config/ folder.
3. Grab the wallpaper and put it somewhere.
    - Change the wallpaper path in .config/hypr/hyprpaper.conf to point wherever you put the wallpaper.
4. Copy the scripts from scripts/ into your .local/bin/ folder.
    - Alternatively don't use the scripts and instead:
        1. Edit .config/hypr/application.lua and change `~/.local/bin/yazi-persist-cwd.sh` to `yazi`.
        2. Edit .config/hypr/keybinds.lua and remove the bind that executes the command `~/.local/bin/foot-duplicate-cwd.sh`
5. Add .zprofile, .zshenv, .zshrc to your home folder.
