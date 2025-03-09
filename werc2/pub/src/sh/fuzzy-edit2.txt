#!/bin/sh

clear &&
$EDITOR "$(fd --type f \
    --exclude '*.{png,jpg,jpeg,gif,webp,avif,mp4,mkv,avi,mov,flv,wmv,webm,pdf,swp,swo}' \
    . /home | fzf --info=inline --preview 'bat --style=numbers --color=always --line-range :500 {}')"
