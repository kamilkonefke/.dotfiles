#!/bin/bash

packages=(
    # Sway
    "sway" "swaybg" "wayland" "waybar" "wl-clipboard" "xorg-xwayland" "ly" "ttf-firacode-nerd" "ttf-jetbrains-mono-nerd" "noto-fonts-emoji" "autotiling"
    # Terminal/Apps
    "zsh" "kitty" "starship" "git" "fastfetch" "neovim" "yazi" "firefox-developer-edition" "slurp" "grim" "paru"
    # Audio
    "pipewire" "pipewire-pulse" "pipewire-jack" "pavucontrol"
)

# Install all packages
yay -S ${packages[@]}

# Copy configs
cp -rf ./.config ~/ &
cp -rf ./.zshrc ~/ &

# Enable ly
systemctl enable ly

echo :3
