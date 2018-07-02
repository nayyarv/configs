#!/bin/bash
# run this on new machines. This gets some stuff I use regularly and need in my zshrc, and are kind of foundational packages

# use relative addressing here
mkdir -p ~/.local
curl -L git.io/antigen > ~/.local/antigen.zsh
sudo apt-get install zsh

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --no-update-rc --key-bindings --completion

# chsh -s $(which zsh)

