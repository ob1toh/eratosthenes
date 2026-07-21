echo "Make new Osaka Jade theme available as new default"

if [[ ! -L ~/.config/eratosthenes/themes/osaka-jade ]]; then
  rm -rf ~/.config/eratosthenes/themes/osaka-jade
  git -C ~/.local/share/eratosthenes checkout -f themes/osaka-jade
  ln -nfs ~/.local/share/eratosthenes/themes/osaka-jade ~/.config/eratosthenes/themes/osaka-jade
fi
