#!/bin/sh

isCommand() {
  # Retain backwards compatibility with common CI providers
  if [ "$1" = "sh" ]; then
    return 1
  fi

  fluidsynth help "$1" > /dev/null 2>&1
}

# check if the first argument passed in looks like a flag
if [ "${1#-}" != "$1" ]; then
  set -- /sbin/tini -- fluidsynth "$@"
# check if the first argument passed in is fluidsynth
elif [ "$1" = 'fluidsynth' ]; then
  set -- /sbin/tini -- "$@"
# check if the first argument passed in matches a known command
elif isCommand "$1"; then
  set -- /sbin/tini -- fluidsynth "$@"
fi

exec "$@"
