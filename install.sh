#!/bin/bash

packages=(
    # Sway
    "hyprland" "hyprpaper" "hyprpicker" "wayland" "waybar" "wl-clipboard" "xorg-xwayland" "ly" "ttf-firacode-nerd" "ttf-jetbrains-mono-nerd" "noto-fonts-emoji" "noto-fonts-cjk" "autotiling"
    # Terminal/Apps
    "zsh" "kitty" "git" "fastfetch" "neovim" "yazi" "nemo" "firefox-developer-edition" "slurp" "grim" "paru"
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

# i use oh-my-zsh btw

echo :3
