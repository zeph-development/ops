#!/bin/bash

install_tools() {
sudo apt install -y curl;
sudo apt install -y vim;
sudo apt install -y git;
sudo apt install -y tree;
sudo apt install -y htop;
sudo apt install -y xbindkeys;
sudo snap install codium --classic;
}

install_diodon() {
sudo apt install -y diodon &&
cat <<EOT > ~/.xbindkeysrc
"/usr/bin/diodon"
   Control + grave	
EOT
killall -s1 xbindkeys &&
xbindkeys -f ~/.xbindkeysrc
}

install_github_cli() {
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg &&
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null &&
sudo apt update &&
sudo apt install gh
}

sudo apt update &&
install_tools
install_github_cli
install_diodon
