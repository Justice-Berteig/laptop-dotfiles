# Configure UWSM to start hyprland on login
if uwsm check may-start; then
	exec uwsm start hyprland.desktop
fi
