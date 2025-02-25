#!/bin/sh

echo "[" > s.json

find . -type f -name "*.md" | sed 's|^\./||; s|\.md$||' | awk '{
  if (NR == 1) {
    printf "  \"%s\"", $0
  } else {
    printf ",\n  \"%s\"", $0
  }
} END {
  print "\n]"
}' >> s.json
