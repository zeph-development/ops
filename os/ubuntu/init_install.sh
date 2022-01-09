#!/bin/bash

cli_tools_install() {
sudo apt install -y git;
sudo apt install -y tree;
sudo apt install -y htop;
sudo apt install -y zsh;
sudo apt install -y diodon;
}

sudo apt update &&
cli_tools_install &&
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions &&
sed 's/plugins=(/plugins=(\nzsh-autosuggestions/g' .zshrc > ~/.zshrc &&
sudo snap install codium --classic;


