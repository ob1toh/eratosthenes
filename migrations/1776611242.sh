echo "Install socat so we can reactivate internal display when external display is removed"

eratosthenes-pkg-add socat
uwsm-app -- eratosthenes-hyprland-monitor-watch &
