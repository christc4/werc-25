#!/bin/sh

# Previous line of shell used for making .json array
find . -type f -name "*.md" | sed 's|^\./||; s|\.md$||' | awk '

 
BEGIN {
    print "<meta charset=utf-8><pre>"
}
{
# Count no. of '/', show dir. depth
    depth = gsub("/", "/"); 

# Which symbol, based on file position
    if (NR > 1 && prev_depth > depth) { # Are we going up
        for (i = 0; i < (prev_depth - depth); i++) { # loop through differences
            tree_stack[prev_depth - i] = " "; # clear unwanted tree symbol
        }
    }
# Symbols
    if (prev_depth == depth) {
        tree_stack[depth] = "├─";
    } else if (prev_depth < depth) {
        tree_stack[depth] = "└─";
    }

    # print symbols without .md filepath
    for (i = 0; i < depth; i++) {
        printf "│   "; # align visually
    }
    print tree_stack[depth] " <a href=\"" $0 "\">" $0 "</a>"
    prev_depth = depth;
}
END {
    print "</pre>"
}'
