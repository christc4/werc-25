# Linux

<!--gpm, set keymap, and key delete speed etc.-->

<div id=t>
Table of Contents

- [Set...](#set)
	- [default browser](#set-default-browser)
	- [time](#set-time)
- [gammastep](#gammastep)
- [mousetweaks](#mousetweaks)
	- [hover click](#hover-click)
- [picom](#picom)
	- [transparency](#transparency)
	- [greyscale](#greyscale)
- [screenkey](#screenkey)
	- [settings](#screenkey-settings)
- [xorg](#xorg)
	- [XRaiseWindow](#xraisewindow)
	- [xkbset](#xkbset)
		- [sticky keys](#xkbset-sticky-keys)
	- [xclock](#xclock)

</div>

## <a name=set>set</a>

### <a name=set-default-browser>$BROWSER</a>

`export BROWSER="/usr/bin/browser"`

Some programs that are graphical, are under no obligation to use the $BROWSER variable

Write your own desktop entry

`xdg-mime default browser.desktop x-scheme-handler/http`

`xdg-mime default browser.desktop x-scheme-handler/https`

### <a name=set-time>time</a>

`ntpd -qg`

`hwclock -w`

`ntpdate pool.ntp.org`

## <a name=gammastep>gammastep</a>

`gammastep -l 31.4:64.1 -t 5700:3600 -g 0.8 -m randr -v`

## <a name=mousetweaks>mousetweaks</a>

### <a name=hover-click>hover click</a>

`setsid mousetweaks --dwell --dwell-time=0.3 --threshold=10`

# Picom

## <a name=picom>picom</a>

### <a name=transparency>transparency</a>

These are my personal configs 

<object data="/pub/src/conf/picom-conf.txt" width="216px" height="250px"></object>

### <a name=greyscale>greyscale</a>

Create file.gsl

<object data=/pub/src/conf/picom-gsl.txt></object>

Start picom by including the .gsl file path

`picom --backend glx --window-shader-fg /path/to/shader/file.gls`

## <a name=screenkey>screenkey</a>

### <a name=screenkey-settings>settings</a>

Run `screenkey --show-settings`

Below is an example 'config' that I use

<img src=/pub/pix/skey.avif>

## <a name=xorg>xorg</a>

### <a name=xraisewindow>xraisewindow</a>

[The original author](https://www.linuxquestions.org/questions/linux-general-1/how-to-bring-up-application-window-to-front-from-shell-script-83545/)

In some xorg window managers, users have reported wmctrl not working out of the box. Since we are already using the x11/xlib library for our respective window managers, we can write a c++ program (see above for
original author), to raise windows. We then call this with a simple shell script and map this to a keypress.

<object data=/pub/src/conf/totop.txt></object>

To compile run `c++ totop.cpp -L/usr/X11R6/lib -lX11 -o totop`

We have named this program 'totop' as in to the top of the window stack

The shell script, `id=$(xwininfo -name "st" | grep id: | awk "{ print \$4 }") && totop $id`

Alternatively you can ommit the second line, and only use the third with the id if you know it

### <a name=xkbset>xkbset</a>

#### <a name=xkbset-sticky-keys>sticky keys</a>

`xkbset sticky -twokey -latchlock`

To achieve "hold down shift" remove the "-" from `-latchlock`

### <a name=xclock>xclock</a>

`xclock -digital -strftime "%%H:%%M"`

