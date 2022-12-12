#!/usr/bin/env fish
#
# resourceful.fish: automatically resource config.fish on edit
#
# Copyright (c) 2022 Rich Lewis
# MIT License

set -g __resourceful_fish_version 0.1.1

if set -q XDG_CONFIG_HOME
  set -g __resourceful_fish_config_path $XDG_CONFIG_HOME/fish/config.fish
else
  set -g __resourceful_fish_config_path $HOME/.config/fish/config.fish
end

set -g __resourceful_fish_last_updated (date -r $__resourceful_fish_config_path +%s)

function resourceful_unininstall --on-event resourceful_uninstall
  set -e __resourceful_fish_version
  set -e __resourceful_fish_config_path
  set -e __resourceful_fish_last_updated
  functions -e __resourceful_fish_resource_config
end
