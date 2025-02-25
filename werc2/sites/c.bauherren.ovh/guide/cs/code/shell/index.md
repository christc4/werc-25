# `#!/bin/shhhhhh it's a library!`

<div id="toc">
Table of Contents

- [ksh](#ksh)
	- [prompts](#ksh-prompts)
	- [source](#ksh-source)
	- [tips](#ksh-tips)
- [zsh](#zsh)
	- [prompts](#zsh-prompts)
	- [tips](#zsh-tips)
</div>

##  <a name='ksh'>ksh</a>

###  <a name='ksh-prompts'>Prompts</a>
 

`export PS1='$HOSTNAME (${PWD##*/}) | '`

###  <a name='ksh-source'>Source</a>

Put this line in `/.kshrc`

Add this line to your `/.profile`

`export ENV=~/.kshrc`

This will source your `.kshrc`

`. ~/.kshrc`

###  <a name='ksh-tips'>Tips</a>

Incremental search `(I-search)` interactive search

Press `C-r`, the shell prompt changes to `I-search:` and you can start typing the beginning of a command or substring. As you type the shell searches incrementally through your previous commands displaying the closest matches. If the first match isn't what you were looking for, press `C-r` again to cycle through more matches in reverse order.  To execute matched commands press `Enter`. To edit the matched command before executing it, you can press right or left arrow to exit the search and modiyf the command line. If you want to cancel the search press C-g or C-c

##  <a name='zsh'>zsh</a>

###  <a name='zsh-tips'>Tips</a>

Automatically cd into typed directory

`setopt autocd`

###  <a name='zsh-prompts'>Prompts</a>

Basic prompt

`PROMPT='%~ | '`

<hr>

It's called a shell as it hides the kernel...
