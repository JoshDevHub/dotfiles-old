#! /usr/bin/bash

function install() {
  echo "Installing: ${1}..."
  sudo apt-get install -y $1
}

install build-essential
install cmake
install curl
install feh
install fzf
install gcc
install htop
install i3
install i3status
install libfreetype6-dev
install libfontconfig1-dev
install libssl-dev
install libxcd-xfixes0-dev
install libxkbcommon-dev
install make
install neofetch
install meson
install npm
install picom
install pkg-config
install postgresql
install python3
install ripgrep
install silversearcher-ag
install software-properties-common
install sqlite3
install tmux
install tree
install wget
install zlib1g zlib1g-dev
install zsh-autosuggestions
