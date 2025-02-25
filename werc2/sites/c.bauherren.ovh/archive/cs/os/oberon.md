# Oberon

Niklaus Emil Wirth passed away on the 1st of January 2004

Oberon was developed around 1987 on a Ceres workstation and later ported to the widely used i386 architecture. Popularity declined after year 2000.

https://people.inf.ethz.ch/wirth/ProjectOberon/PO.System.pdf

## Gallery

Photos taken from Project Oberon - the design of an operating system and compiler
N. Wirth, J. Gutknecht
Published 2 November 1992

<img src=/pix/oberon1.avif>

the Oberon gadgets gui desktop

<img src=/pix/oberon2.avif>

a viewer class desktop organizing overlapping frames

<img src=/pix/oberon3.avif>

the layout of a standard cedar screen showing command row and icon row

<img src=/pix/oberon4.avif>

screen layout produced by unconstrained tiling

<img src=/pix/oberon5.avif>

standard oberon configuration featuring two logically adjacent displays of equal size and structure

<img src=/pix/oberon6.avif>

simulated desktop, showing overlapping viewers. (b) partial overlappings in the desktop model

<img src=/pix/oberon7.avif>

typical oberon display configuration consisting of seven viewers

## Minds behind

<img src=/pix/niklaus-wirth.avif>

[Niklaus Wirth](https://people.inf.ethz.ch/wirth/) authored the Oberon language, together with Jürg Gutknecht, he developed the Oberos OS.

## Name explained

First question: What is Oberon? Answer: Oberon is one of the 27 moons orbiting around Uranus and was discovered in 1787 by William Herschel... What you want to know is that Oberon is an programming language and an operating system. 

## Relation to acmeee

From [golem.de](https://www.golem.de/news/oberon-eth-das-schweizer-system-2301-170754-2.html)

> Oberon also relies heavily on the middle mouse button of a three-button mouse: it is used to execute commands and file operations. To do this, for example, click on "System.ShowModules" in the system tool and another window opens that shows the currently loaded modules with memory information.

> The left mouse button gives us a cursor for editing or typing or for changing window sizes. The right mouse button is used for highlighting. There is no tricky double-click. You quickly get used to this type of user interface - it helps that it is consistently valid system-wide.

Translated from German

## Sources used

- [oberon.org](https://oberon.org)
- [native.oberon.org](http://native.oberon.org/)
- [projectoberon.net](https://www.projectoberon.net/)

## Acme

[Acme: A User Interface for Programmers](https://doc.cat-v.org/plan_9/4th_edition/papers/acme/)

> Acme is a new program, a combined window system, editor, and shell, that applies some of the ideas distilled by Oberon. Where Oberon uses objects and modules within a programming language (also called Oberon), Acme uses files and commands within an existing operating system (Plan 9). Unlike Oberon, Acme does not yet have support for graphical output, just text. At least for now, the work on Acme has concentrated on producing the smoothest user interface possible for a programmer at work.

> One of the things Acme does not provide directly is a facility like Sam’s command language to enable actions such as global substitution; within Acme, all editing is done manually. It is easy, though, to write external programs for such tasks. In this, Acme comes closer to the original intent of Oberon: a directory, /acme/edit, contains a set of tools for repetitive editing and a template or ‘guide’ file that gives examples of its use. Acme’s editing guide, /acme/edit/guide, looks like this:

e file | x ’/regexp/’ | c ’replacement’

e file:’0,$’ | x ’/.*word.*\n/’ | p -n

e file | pipe command args ...

> In Oberon, such a collection would be called a tool and would consist of a set of entry points in a module and a menu-like piece of text containing representative commands that may be edited to suit and executed. There is, in fact, a tool called Edit in Oberon. To provide related functionality, Acme exploits the directory and file structure of the underlying system, rather than the module structure of the language; this fits well with Plan 9’s file-oriented philosophy. Such tools are central to the working of Oberon but they are less used in Acme, at least so far. The main reason is probably that Acme’s program interface permits an external program to remain executing in the background, providing its own commands as needed (for example, the Reply command in the mail program); Oberon uses tools to implement such services because its must invoke a fresh program for each command. Also, Acme’s better integration allows more basic functions to be handled internally; the right mouse button covers a lot of the basic utility of the editing tools in Oberon. Nonetheless, as more applications are written for Acme, many are sure to take this Oberon tool-like form.

Comparison with other systems

Acme’s immediate ancestor is Help [Pike92], an experimental system written a few years ago as a first try at exploring some of Oberon’s ideas in an existing operating system. Besides much better engineering, Acme’s advances over Help include the actions of the right button (Help had nothing comparable), the ability to connect long-running programs to the user interface (Help had no analog of the event file), and the small but important change to split command output into windows labeled with the directory in which the commands run.

Most of Acme’s style, however, derives from the user interface and window system of Oberon [Wirt89, Reis91]. Oberon includes a programming language and operating system, which Acme instead borrows from an existing system, Plan 9. When I first saw Oberon, in 1988, I was struck by the simplicity of its user interface, particularly its lack of menus and its elegant use of multiple mouse buttons. The system seemed restrictive, though—single process, single language, no networking, event-driven programming—and failed to follow through on some of its own ideas. For example, the middle mouse button had to be pointed accurately and the right button was essentially unused. Acme does follow through: to the basic idea planted by Oberon, it adds the ability to run on different operating systems and hardware, connection to existing applications including interactive ones such as shells and debuggers, support for multiple processes, the right mouse button’s features, the default actions and context-dependent properties of execution and searching, and a host of little touches such as moving the mouse cursor that make the system more pleasant. At the moment, though, Oberon does have one distinct advantage: it incorporates graphical programs well into its model, an issue Acme has not yet faced.

