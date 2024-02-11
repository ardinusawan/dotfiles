autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

eval $(/opt/homebrew/bin/brew shellenv)

if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi
