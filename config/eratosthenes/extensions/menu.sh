# Overwrite parts of the eratosthenes-menu with user-specific submenus.
# See $ERATOSTHENES_PATH/bin/eratosthenes-menu for functions that can be overwritten.
#
# WARNING: Overwritten functions will obviously not be updated when Eratosthenes changes.
#
# Example of minimal system menu:
#
# show_system_menu() {
#   case $(menu "System" "  Lock\n󰐥  Shutdown") in
#   *Lock*) eratosthenes-system-lock ;;
#   *Shutdown*) eratosthenes-system-shutdown ;;
#   *) back_to show_main_menu ;;
#   esac
# }
#
# Example of overriding just the about menu action: (Using zsh instead of bash (default))
#
# show_about() {
#   exec eratosthenes-launch-or-focus-tui "zsh -c 'fastfetch; read -k 1'"
# }
