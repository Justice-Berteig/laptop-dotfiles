#!/usr/bin/env bash
set -euo pipefail

# Get information about the currently focused window.
active_window=$(hyprctl activewindow)
# Regular expression to match the pid in the active window information.
pid_regex="pid: ([0-9]+)"

# Try to get the pid of the active window.
if [[ $active_window =~ $pid_regex ]]; then
    pid=${BASH_REMATCH[1]}

    # Create some unset variables.
    unset cwd
    unset child_pid
    unset leaf_pid

    # Find current working directory by looping through all children of the
    # active window to find the leaf, and then getting the current working
    # directory of the leaf.
    while [ -r "/proc/$pid/task/$pid/children" ]; do
        # Get PID of child.
        child_pid=$(cat "/proc/$pid/task/$pid/children")

        # Trim whitespace from end of child PID.
        pid="${child_pid%"${child_pid##*[![:space:]]}"}"

        # Try to get current working directory.
        # The final PID read by this loop does not have a cwd, so also save the
        # PID as the leaf PID if it has a cwd.
        if [ -r "/proc/$pid/cwd" ]; then
            cwd=$(readlink -f "/proc/$pid/cwd")
            leaf_pid=$pid
        fi
    done

    if [ $(cat "/proc/$leaf_pid/comm") = "yazi" ]; then
        # If the leaf process is yazi, launch yazi.
        foot -D "$cwd" -e ~/.local/bin/yazi-persist-cwd.sh & disown
    else
        # If the leaf process is not yazi, just launch foot.
        foot -D "$cwd" & disown
    fi
else
    echo "Couldn't get PID of active window!"
fi
