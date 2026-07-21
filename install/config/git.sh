# Set identification from install inputs
if [[ -n ${ERATOSTHENES_USER_NAME//[[:space:]]/} ]]; then
  git config --global user.name "$ERATOSTHENES_USER_NAME"
fi

if [[ -n ${ERATOSTHENES_USER_EMAIL//[[:space:]]/} ]]; then
  git config --global user.email "$ERATOSTHENES_USER_EMAIL"
fi
