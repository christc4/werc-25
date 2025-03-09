#!/bin/sh

clear &&
$EDITOR "$(find /home -type d -name '.git' -prune -o -type f \
-not -name '*.webp' \
-not -name '*.webm' \
-not -name '*.pdf' \
-not -name '*.jpg' \
-not -name '*.jpeg' \
-not -name '*.gif' \
-not -name '*.png' \
-not -name '*.mp4' -print | fzf --info=inline --preview 'cat {}')"
