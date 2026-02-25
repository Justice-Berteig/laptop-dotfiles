My Arch Linux rice for my laptop.
![Wallpaper screenshot](/screenshots/screenshot1.png?raw=true)
![Terminal + file manager screenshot](/screenshots/screenshot2.png?raw=true)

# Setup

1. Make sure you have the following programs installed:
    - Fastfetch
    - foot
    - fuzzel
    - Hyprland
        - Discord
        - Firefox
        - grim
        - hyprpaper
        - Spotify (spotify-launcher)
        - SwayNotificationCenter (swaync)
    - Neovim (nvim)
    - Recursive Mono Nerd font (ttf-recursive-nerd)
    - Waybar
    - Yazi
2. Copy and paste everything from this repo's .config/ folder into your .config/ folder.
3. Grab the wallpaper and put it somewhere.
    - Change the wallpaper path in .config/hypr/hyprpaper.conf to point wherever you put the wallpaper.
4. Copy the script from scripts/ into your .local/bin/ folder.
    - Alternatively edit .config/hypr/variables.conf and change `~/.local/bin/yaziccwd.sh` to `yazi`.
