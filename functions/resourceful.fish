#!/usr/bin/env fish
#
# resourceful.fish: automatically resource config.fish on edit
#
# Copyright (c) 2022 Rich Lewis
# MIT License

function __resourceful_fish_resource_config --on-event fish_prompt -d 'automatically re-source config.fish if modified'
  # find time config.fish was last updated
  set -l last_updated (date -r $__resourceful_fish_config_path +%s)

  # if it is different to timestamp recorded previously, re source and save new timestamp
  if test "$__resourceful_fish_last_updated" != "$last_updated"
    echo Re-sourcing $__resourceful_fish_config_path
    source $__resourceful_fish_config_path
    set __resourceful_fish_last_updated $last_updated
  end
end
