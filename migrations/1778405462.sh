echo "Create Mako and Walker toggle configs"

mkdir -p ~/.local/state/eratosthenes/toggles
[[ -f ~/.local/state/eratosthenes/toggles/mako.ini ]] || touch ~/.local/state/eratosthenes/toggles/mako.ini
[[ -f ~/.local/state/eratosthenes/toggles/walker.css ]] || touch ~/.local/state/eratosthenes/toggles/walker.css
