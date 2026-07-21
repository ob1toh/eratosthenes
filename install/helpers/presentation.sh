# Ensure we have gum available
if ! command -v gum &>/dev/null; then
  echo "Installing gum..."
  sudo pacman -S --noconfirm --needed gum
fi

# Get terminal size from /dev/tty (works in all scenarios: direct, sourced, or piped)
if [[ -e /dev/tty ]]; then
  TERM_SIZE=$(stty size 2>/dev/null </dev/tty)

  if [[ -n $TERM_SIZE ]]; then
    export TERM_HEIGHT=$(echo "$TERM_SIZE" | cut -d' ' -f1)
    export TERM_WIDTH=$(echo "$TERM_SIZE" | cut -d' ' -f2)
  else
    # Fallback to reasonable defaults if stty fails
    export TERM_WIDTH=80
    export TERM_HEIGHT=24
  fi
else
  # No terminal available (e.g., non-interactive environment)
  export TERM_WIDTH=80
  export TERM_HEIGHT=24
fi

export LOGO_WIDTH=0
export LOGO_HEIGHT=0
export PADDING_LEFT=0
export PADDING_LEFT_SPACES=""

# Minimum rows to reserve for interactive TUI content below the logo
MIN_CONTENT_ROWS=15

# Tokyo Night theme for gum confirm
export GUM_CONFIRM_PROMPT_FOREGROUND="6"     # Cyan for prompt
export GUM_CONFIRM_SELECTED_FOREGROUND="0"   # Black text on selected
export GUM_CONFIRM_SELECTED_BACKGROUND="2"   # Green background for selected
export GUM_CONFIRM_UNSELECTED_FOREGROUND="7" # White for unselected
export GUM_CONFIRM_UNSELECTED_BACKGROUND="0" # Black background for unselected
export PADDING="0 0 0 0"
export GUM_CHOOSE_PADDING="$PADDING"
export GUM_FILTER_PADDING="$PADDING"
export GUM_INPUT_PADDING="$PADDING"
export GUM_SPIN_PADDING="$PADDING"
export GUM_TABLE_PADDING="$PADDING"
export GUM_CONFIRM_PADDING="$PADDING"

clear_logo() {
  printf "\033[H\033[2J" # Clear screen and move cursor to top-left
}

show_logo() {
  local logo_file="${ERATOSTHENES_PATH:-$HOME/.local/share/eratosthenes}/default/branding/logo.txt"
  if [[ ! -f $logo_file ]]; then
    return
  fi

  local available_height=$(( TERM_HEIGHT - MIN_CONTENT_ROWS ))
  if (( available_height <= 0 )); then
    available_height=4
  fi

  local logo_lines logo_line_count
  mapfile -t logo_lines < "$logo_file"
  logo_line_count=${#logo_lines[@]}

  if (( logo_line_count <= available_height )); then
    gum style --foreground 4 --padding "1 0 0 $PADDING_LEFT" "$(cat "$logo_file")"
  else
    local start=$(( logo_line_count - available_height ))
    local cropped
    cropped=$(printf "%s\n" "${logo_lines[@]:start:available_height}")
    gum style --foreground 4 --padding "1 0 0 $PADDING_LEFT" "$cropped"
  fi
}
