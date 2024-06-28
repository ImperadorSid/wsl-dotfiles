#!/usr/bin/env bash

touch ~/.hushlogin

sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt update
sudo apt upgrade -y

sudo apt install -y \
fish neovim vifm git jq unzip aria2 apt-file

sudo chsh -s /usr/bin/fish impsid

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

ASDF_DIR=~/.asdf
FISH_DIR=~/.config/fish
git clone https://github.com/asdf-vm/asdf.git $ASDF_DIR --branch v0.14.0
mkdir -p $FISH_DIR/completions && ln -s $ASDF_DIR/completions/asdf.fish $FISH_DIR/completions
echo source $ASDF_DIR/asdf.fish > $FISH_DIR/config.fish
echo 'legacy_version_file = yes' > ~/.asdfrc
