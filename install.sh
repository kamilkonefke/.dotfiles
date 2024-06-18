#!/bin/bash

packages=(
    "sway" "git" "starship" "zsh" "kitty" "fastfetch" "wl-clipboard" "wayland" "ly" "neovim"
    "pipewire" "pipewire-pulse" "pipewire-jack" "pavucontrol"
)

# Install all packages
yay -S ${packages[@]}

# Copy configs
cp -rf ./.config ~/ &
cp -rf ./.zshrc ~/ &

echo :3
