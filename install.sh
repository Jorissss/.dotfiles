#!/bin/bash

# Installs all config files in this repo. Specify for which tools to install
# with command line arguments.

# Define folder and target location
declare -A folders
folders[alacritty]="$HOME/.config/alacritty"
folders[fish]="$HOME/.config/fish"
folders[i3]="$HOME/.config/i3"
folders[nvim]="$HOME/.config/nvim"

declare -A files
files[tmux]="$HOME/.tmux.conf"
files[zsh]="$HOME/.zshrc"

# Loop through the command-line arguments
for tool in "$@"; do
  # Symlink folders
  if [ "${folders[$tool]+isset}" ]; then
    target="${folders[$tool]}"
    source="$PWD/$tool"

    if [ -d "$target" ] || [ -L "$target" ]; then
      rm -rf "$target"
    fi

    ln -s "$source" "$target"
    echo "Symlinked $source to $target"
  fi

  # Symlink individual files
  if [ "${files[$tool]+isset}" ]; then
    target="${files[$tool]}"
    source="$PWD/$tool/.tmux.conf"

    if [ -f "$target" ] || [ -L "$target" ]; then
      rm -rf "$target"
    fi

    ln -s "$source" "$target"
    echo "Symlinked $source to $target"
  fi
done

