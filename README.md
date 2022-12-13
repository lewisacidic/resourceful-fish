# resourceful-fish

A simple fish plugin to re-source your config.fish on edit.

## Installation

Using [`fisher`](https://github.com/jorgebucaran/fisher):

```shell
fisher install lewisacidic/resourceful-fish
```

## Usage

Resourceful.fish will watch for changes in `$XDG_CONFIG_HOME/fish/config.fish`
(or `$HOME/.config/fish/config.fish` if $XDG_CONFIG_HOME is not set) by checking
the last edit date.
If it spots an update, it will automatically resource the file!

```console
> echo "set VERY_RESOURCEFUL fish" >> ~/.config/fish/config.fish
Re-sourcing /Users/rich/.config/fish/config.fish
```
