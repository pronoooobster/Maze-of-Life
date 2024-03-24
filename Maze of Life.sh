#!/bin/sh
echo -ne '\033c\033]0;Maze of Life\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Maze of Life.x86_64" "$@"
