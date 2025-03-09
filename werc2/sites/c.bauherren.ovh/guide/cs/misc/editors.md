<div id=t>

- [acme](#acme)
- [vim](#vim)

</div>

## <a name=acme>acme</a>

<details><summary>Resources used:</summary>
[evbogdanox](//github.com/evbogdanov/acme/blob/master/README.md)
</details>

<img src="/pub/pix/acme-mouse-chords.png" style="width:410px; height: auto;"> Image by Tom Lieber

`Edit =`

Find current line number

`:13`

Go to the 13th line

`:0`

Go to file beginning

`:$` 


:1,5 or Edit 1,5 select lines 1..5
Edit , d clear window
Edit , < echo hello world replace window body with some text
Edit , < erl -man maps replace window body with erlang manual
Edit , s/text/TEXT/g or Edit , | sed 's/text/TEXT/g' global replace
$winid current window id
echo some text | 9p write acme/$winid/body append to the end of current window
keyboard shortcuts:
ctrl-u delete from cursor to start of line
ctrl-w delete word before the cursor
ctrl-h delete character before the cursor
ctrl-a move cursor to start of the line
ctrl-e move cursor to end of the line
ctrl-i tab
ctrl-j enter
ctrl-f filepath autocompletion
press esc to select the last typed text
press esc again to delete any selected text

## <a name=vim>vim</a>

### <a name=Movement

<img src="/pub/pix/vim-movement-table.png" style="width:450px; height: auto;">

Vim tutorial


## What you MUST do

### No. 1

Stop using default keybinds to save a file, don't bother with 

To default save a file one has to...

- hold shift
- press ':'
- enter 'w'

if you are not already in escape mode one has to 

- press 'esc'

that is too many keypresses,

even 'ZZ' is no good  

# Useful

- `gj` and `gk`
	- move cursor up and down to wrapped part of a line
- `g0` and `g$`
	- move cursos te first and last letter of wrapped line
- `gq`
	- turn long line into multiple lines
- `gu` and `gU` 
	- uncapitalize and capitalize words/lines
- `~` and `g~`
- `gf` 
	- open highlighted text as file
- `gJ`
	- conjoining lines without leaving spaces
- `<`
	- remove indent, first highlight

- `>` 
	- apply indent, firsh highlight

Vim includes a man page viewer, :Man , in its runtime files. Even better, you can just place your cursor on a word in the buffer and press <Leader>K ( \K ) to see the man page for that word.24 May 2013


set mouse=a

<img src="/pub/pix/vim-cigarretes.avif" style="width:250px; height: auto;">

### <a name=vim-personal-config>Personal config</a>

<object data=/pub/src/conf/vimrc.txt></object>

Computers are the closest thing mankind has to magic
