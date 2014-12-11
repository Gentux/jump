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

Create a mark in $MARKPATH folder:

```
$ cd my/folder
$ mark
```

List your marks:
```
$ marks
```

Move to your folder:
```
$ jump folder
```

Remove the mark:
```
$ unmark folder
```

Variables
---------

`jump.sh` includes some *export* command too. So, if you have marked the dir `/path/to/directory/foo` you can type:

```
$ mv proto.file $jfoo
```

Completion in bash will automatically expand var *$jfoo* as the full path to `foo` directory
