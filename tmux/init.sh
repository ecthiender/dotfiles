#!/bin/bash
# Script to start my tmux sessions

# Make sure locale is UTF-8
locale=$(echo "$LANG" | cut -d '.' -f 1)
export LC_ALL="$locale.UTF-8"
export DISABLE_AUTO_TITLE="true"

tmuxp load -2 -y work pers
