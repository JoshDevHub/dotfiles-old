#! /usr/bin/bash

# Install Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Hasklig.zip
unzip Hasklig.zip
cp ~/Downloads/Hasklig/Hasklig*.otf ~/.local/share/fonts/

# Install Alacritty
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup override set stable
rustup update stable

git clone git@github.com:alacritty/alacritty.git
cd alacritty
cargo build --release
cd $HOME
