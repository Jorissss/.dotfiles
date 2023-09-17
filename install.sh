#!/bin/bash

# Define folder and target location
declare -A folders
folders[alacritty]="$HOME/.config/alacritty"
folders[fish]="$HOME/.config/fish"
folders[i3]="$HOME/.config/i3"
folders[nvim]="$HOME/.config/nvim"

# Loop and symlink folders
for folder in "${!folders[@]}"; do
    target="${folders[$folder]}"
    source="$PWD/$folder"

    if [ -d "$target" ] || [ -L "$target" ]; then
        rm -rf "$target"
    fi

    ln -s "$source" "$target"
    echo "Symlinked $source to $target"
done

# Handle individual files
declare -A files
files[tmux/.tmux.conf]="$HOME/.tmux.conf"
files[zsh/.zshrc]="$HOME/.zshrc"

for file in "${!files[@]}"; do
    target="${files[$file]}"
    source="$PWD/$file"

    if [ -f "$target" ] || [ -L "$target" ]; then
        rm -rf "$target"
    fi

    ln -s "$source" "$target"
    echo "Symlinked $source to $target"
done

