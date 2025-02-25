# md2html

This is a guide explaining the famous 'md2html.awk' by Jesus Galan (yiyus) yiyu.jgl@gmail, May 2009

Start here [disect](disect)

<object data=src/md2html.txt width=790 height=6540></object>
# Disect

2024/10/07

<object data=src/shebang.txt width=130 height=45></object>

This is our scripts shebang. 

Awk's `-f` flag as per the man page...

- f progfile
	- Read program code from the specified file progfile instead of from the command line.

Awk can be used directly within the command line for small one-liners but for larger complex scripts it's more practical to write awk in a file

<object data=src/func_eschtml.txt width=280 height=100></object>

The function `eschtml` escapes HTML special characters, using `gsub` (global substitution) to replace all occurences of ampersands and less than signs with their respective html entities.

> ampersands denote the beginning of an _entity_, 

> less than signs define the start of HTML tags

*Note*: browsers encountering an unescaped ampersand could mistakenly treat proceeding text as an HTML entity, causing unintended rendering issues. Likewise unescaped less than signs are treated as the start of HTML elements/tags

<object data=src/func-oprint.txt width=290 height=120></object>

*DO NOT* confuse the user-defined custom counter `nr` with `NR` awk's built-in variable which represents the number of records processed so far.

`nr` acts as a flag/counter tracking the number of unresolved references or delayed output.

If `nr == 0`, the script prints `t`, the parameter of function `oprint` directly

If `nr` is not 0 it appends the text to `t` instead of printing it immediately. The script is accumulating output, likely, it is in a state of buffering because some other conditions (unresolved references) must be processed before a final output can be generated

The backslash n represents a newline character, which is used to insert line breaks or move to the next line in text output. In the script it signals to stop writing on the current line and move to the beginning of the next line. In regards to the previous explanation `\n` is concatenated with t (the text passed to the function) and appended to the `otext` buffer, this ensures that ecah piece of text is seperated by a newline when it's printed later, appearing on a new line in the outputted HTML.

We will encounter `nr` again later, for now keep in mind that `nr` is a *custom counter* that controls whether output is to be printed immediately or stored in the `otext` buffer, allowing the script to manage output in stages

<object data=src/func-subref.txt width=560 height=140></object>

The `subref(id)` function is responsible for substituting markdown reference links with the corresponding URL or image references and managing their output

- `sub("<<" id, ref[id], otext)`
	- looks for placeholder pattern `<<id` in the `otext` buffer
	- `id` represents a reference key defined elsewhere in the source .md
	- `ref[]` array holds the actual URLS or other values associated with the ID
	- if placeholder `<<id` is found it's replaced

It decreases nr as it processes each substitution.

<object data=src/subref-example1.txt width=650 height=100></object>

<object data=src/subref-example2.txt width=730 height=20></object>

<object data=src/subref-example3.txt width=290 height=20></object>
