echo "Change to openai-codex instead of openai-codex-bin"

if eratosthenes-pkg-present openai-codex-bin; then
    eratosthenes-pkg-drop openai-codex-bin
    eratosthenes-pkg-add openai-codex
fi
