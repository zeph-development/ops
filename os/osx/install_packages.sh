#!/bin/bash

# Install home brew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install tree;
brew install watch;
brew install wget;

brew install --cask visual-studio-code;

brew install python@3.8;
brew install pyenv;
pyenv install 3.9.2;
python3 -m pip install --upgrade pip;

brew install go;

brew install --cask docker;
brew install kubernetes-cli;


