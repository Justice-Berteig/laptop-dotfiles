#!/bin/bash

tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
trap "rm -f $tmp" EXIT

yazi "$@" --cwd-file="$tmp"
IFS= read -r -d '' cwd <"$tmp"
[ -n "$cwd" ] && cd "$cwd"
rm -f -- "$tmp"
exec "$SHELL"
