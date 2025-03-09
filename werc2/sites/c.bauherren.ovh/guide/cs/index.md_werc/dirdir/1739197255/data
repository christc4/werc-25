# Computer Stuff, guide h

- [utils](#core-utils) - [basename](#basename) - [mv](#mv)	- [tree](#tree)	- [sed](#sed)
- [imagemagick](#imagemagick)- [ffmpeg](#ffmpeg)- [sshfs](#sshfs)- [tmux](#tmux)


lot's to do, sorry for the mess unix join() cmp()


## <a name=core-utils>utils</a>

### <a name=basename>basename</a>

`echo "/path/to/file1 /another/path/file2" | xargs -n1 basename`

### <a name=chown>chown</a>

`chown -R dawn:wheel .`

Changes user and group owenership

### <a name=mv>mv</a>

Move files from a directory into current directory

`mv directory/* .`

### <a name=tree>tree</a>

Generate sitemap

`tree -H ./ > sitemap.html`

### <a name=sed>sed</a>

## Removing all instances of the "<" sign

	sed -i 's/>//g' yourfile.md

- `-i` tells sed to edit the file, rather than output modified text to standard outputA
- `s` stands for substitution
- `//` The replacement string is between the second and third slashes. Since there is nothing between these slashes, sed replaces > with nothing 
- `g` stands for global, replacing every instance

## Change all instances of a string

	sed -i 's/webp/avif/g' filename

Creates backup

	sed -i.bak 's/webp/avif/g' filename

## Remove the pattern "../"

	sed -i 's/\.\.\///g' filename.html

## Misc

	sed -i 's/\<str\>/gif/g' filename.html

s/\<str\>/gif/g: Substitute (s) str with gif, where \< and \> ensure that only the exact word str is replaced, not occurrences where str is a part of another word.

@

## Loop

`for file in *.md; do sed -i 's|\.pix/||g' "$file"; done`

removes every instance of .pix/

sed 's/="\./="/' filename


sed 's/\.md//g' filename

## <a name=ghostscript>ghostscript</a>

`gs -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pngalpha -r300 -sOutputFile=output-PERCENTSIGNd.png input.pdf`

## <a name=git>git</a> 

Create new repository

`git init`

`git add .`

`git commit -m "Commit Message"`

`git branch -M main`

`git remote add origin git@github.com:username/repo-name.git`

`git push -u origin main`

Generate new SSH key

`ssh-keygen -t ed25519 -C "your_email@example.com"`

If you are using a legacy system that doesn't support the Ed25519 algorithm, use:

`ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`

## <a name=imagemagick>imagemagick</a> 

todo

`convert -background none -fill black -pointsize 48 label:"c@avsbq.org·" -virtual-pixel none -distort Arc 360 avsemail.pn`

### Remove Whitespace

	convert -trim

### Flip images

To flip horizontally

	convert input.jpg -flip output.jpg

To flip vertically

	convert input.jpg -flop output.jpg

### Dithering

	convert tux.webp -resize 384 -dither FloydSteinberg -remap pattern:gray50 tux.webp

Ordered

	convert invader.webp -colorspace gray -ordered-dither o8x8 invader2.webp

### Rotate

### Anti-clockwise

	convert dumbbell.jpg -rotate -90 dumbbell1.jpg

### Clockwise

Same command as before but! omit the `-` before `90`

Add spiral to image

`convert -background none -fill black -pointsize 48 label:"you@email.com" -virtual-pixel none -distort Arc 360 output.png`

# ffmpeg

For delay

	ffmpeg -i a.mp4 -itsoffset 2 -i a.m4a -c:v copy -c:a aac -strict experimental b.mp4

Combine video and audio

	ffmpeg -i a.mp4 -i a.m4a -c:v copy -c:a aac -strict experimental b.mp4

## converting videos

	ffmpeg -i a.mkv -codec copy a.mp4

## <a name=sshfs>SSHFS</a>

2024/10/05

From local machine 

	sudo sshfs root@avsbq.org:/var/www/werc/sites/ /mnt/avsbq.org

## Common error

If you recently reinstalled server OS and try again you might get an error and even if you've made a previous successful ssh connection...

	Connection reset by peer

First, 

	Subsystem sftp /usr/lib/openssh/sftp-server

Add this line to

`/mnt/ssh/sshd_config`

<object data=/pub/src/sshfs1.txt width=530 height=60></object>

<object data=/pub/src/sshfs-error-log.txt width=870 height=320></object>

Remove offending key

`ssh-keygen -R avsbq.org`

reattemppt connection

If it says 'remote host has disconnected'

on OpenBSD it's `rcctl restart sshd`

## <a name=tmux>tmux</a>

Computers are the closest thing mankind has to magic


