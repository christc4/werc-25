<style>#toc{position:fixed;top:20px;right:20px;max-width:200px;padding:10px;overflow-y:auto;max-height:80vh;z-index:1000}</style>

# Shell Scripts

Table of Contents

- [One-Liners](#one-liners)
	- [Batch Replace filename char.](#replace-filename-char)
	- [Batch rename filename, uppercase to lower](#file-rename-uppercase-lower)
	- [Batch file rename](#file-rename)
	- [File size](#file-size)
	- [Fuzzy cd](#fuzzy-cd)
	- [Screenshot to clipboard](#screenshot-to-clipboard)
	- [Shuffle images](#shuffle-images)
- [Batch gif background color removal](#batch-gif-bg-color-remove)
- [Batch Image Conversion](#batch-image-conversion)
- [Chinese Char. Lookup](#chinese-lookup)
- [Fuzzy edit](#fuzzy-edit)
	- [v1](#fuzzy-edit1)
	- [v2](#fuzzy-edit2)
- [Generic git-push](#git-push1)
- [JSON generate](#json-generate)

##  <a name='one-liners'>One-Liners</a>

###  <a name='replace-filename-char'>Replace filename char.</a>

`find . -name '* *' | while IFS= read -r f; do mv "$f" "$(echo "$f" | tr ' ' '_')"; done`

This replaces every 'space' with an underscore

###  <a name='file-rename-uppercase-lower'>Convert uppercase filenames to loweer</a>

`for file in *; do mv "$file" "$(echo "$file" | tr '[:upper:]' '[:lower:]')"; done`

###  <a name='file-rename'>Batch file rename</a>

`find . -type f -name 'index.md' -execdir mv '{}' i.md \;`

###  <a name='file-size'>File size</a>

`du -sk * | sort -nr | awk '{print $1/1024 " MB\t" $2}'`

###  <a name='fuzzy-cd'>Fuzzy cd</a>

`cd $(find /var/www/werc/sites -type d \( -name .git -prune \) -o \( -type d -print \) | fzf) && clear`

###  <a name='screenshot-to-clipboard'>Screeenshot to clipboard</a>

`import png:- | xclip -selection c -t image/png`

###  <a name='shuffle-images'>Shuffle images</a>

`find . -type f | shuf | nsxiv -ai`

##  <a name='batch-gif-bg-color-remove'>Batch gif background color removal</a>

<object data=/src/sh/batch-gif-bg-color-remove.txt></object>

##  <a name='batch-image-conversion'>Batch image conversion</a>

<object data="/src/sh/batch-image-conversion1.txt" width="350px" height="340px"></object>

##  <a name='chinese-lookup'>Chinese char. lookup</a>

<object data=/src/sh/cn-lookup.txt></object>

##  <a name='fuzzy-edit'>Fuzzy edit</a>

###  <a name='fuzzy-edit1'>Fuzzy edit v1</a>

<object data="/src/sh/fuzzy-edit1.txt" width="350" height="210"></object>

###  <a name='fuzzy-edit2'>Fuzzy edit v2</a>

<object data="/src/sh/fuzzy-edit2.txt" width="350" height="272"></object>

##  <a name='git-push1'>Generic git push</a>

<object data="/src/sh/git-push.txt" width="350px" height="200px"></object>

##  <a name='json-generate'>JSON generate</a>

<object data=/src/sh/json-generate.txt></object>
