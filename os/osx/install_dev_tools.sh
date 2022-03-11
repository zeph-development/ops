#!/bin/bash

# Developer setup tools script

install_tools () {
brew install copyclip;
brew install slack;
brew install iterm2;
brew install
brew install jq;
brew install yq;
brew install tcptraceroute;
brew install telnet;
brew install htop;
brew install wget;
brew install git;
brew install gh;
brew install tree;
brew install watch;
brew install wget;
brew install go;
brew install --cask docker;
brew install kubernetes-cli;
}

install_apps () {
brew install firefox;
brew install google-chrome;
brew install visual-studio-code;
}

# start...
#xcode-select --install ||
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&
#echo 'export PATH=/opt/homebrew/bin/:$PATH' >> ~/.bashrc &&
#source ~/.bashrc &&
install_rools;
install_apps;
