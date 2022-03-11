#!/bin/bash

install_tools() {

brew install git;
brew install gh;
brew install tree;
brew install watch;
brew install wget;

brew install --cask visual-studio-code;

brew install go;
brew install --cask docker;
brew install kubernetes-cli;
}

install_sdk () {
brew install python@3.7 &&
brew install pyenv &&
pyenv install 3.7 &&
python3 -m pip install --upgrade pip &&
brew install pipenv
}

install_apps () {
brew install --cask firefox
}

# start...
xcode-select –install &&
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&
brew_tools_install
