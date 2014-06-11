Jump
====

Bash functions to move faster with frequent directories


Installation
------------

Copy the file `jump-completion.bash` in `~/.jump-completion.bash`.

Then :

```
$ source /path/to/jump/jump.sh
```
or copy the content of jump.sh into your bashrc file.

Functions
---------

```
$ cd my/folder
$ mark
```
Create a mark in $MARKPATH folder


```
$ marks
```
List your marks

```
$ jump folder
```
Move to your folder

```
$ unmark folder
```
Remove the mark
