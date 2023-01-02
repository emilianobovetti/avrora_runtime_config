#!/usr/bin/env sh

if [ ! -d deps ]; then
  mix deps.get
fi

if [ "$#" -eq 0 ]; then
  exec iex -S mix run
else
  exec "$@"
fi
