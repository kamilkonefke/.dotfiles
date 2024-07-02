#!/bin/bash

packages=(
    "sway" "swaybg" "xorg-xwayland" "git" "starship" "zsh" "kitty" "fastfetch" "wl-clipboard" "wayland" "ly" "neovim" "ttf-firacode-nerd" "autotiling"
    "pipewire" "pipewire-pulse" "pipewire-jack" "pavucontrol" "firefox-developer-edition" "slurp" "grim"
)

# Install all packages
yay -S ${packages[@]}

# Copy configs
cp -rf ./.config ~/ &
cp -rf ./.zshrc ~/ &

# Enable ly
systemctl enable ly

echo :3
