# touchbar_git

Adds current git branch and status to an TouchBar function key.

## Install:

Install the plugin using fisherman:

```
fisher tader/touchbar_git
```

## Configure:

In order to bind to the function keys and event handlers, we need to initialize
touchbar_git from your `config.fish`. Initialization is done by calling the
function `touchbar_git` with an function key as argument.

For example, to enable touchbar_git on function key 2, add the following
to `~/.config/fish/config.fish`:

```
touchbar_git F2
```
