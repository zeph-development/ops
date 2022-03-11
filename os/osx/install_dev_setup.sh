#!/bin/bash

# Install developer sdk, tools and apps + other setups script

install_sdk () {
/opt/homebrew/bin/brew install python@3.7 &&
/opt/homebrew/bin/brew install pyenv &&
ipyenv install 3.7 &&
python3 -m pip install --upgrade pip &&
/opt/homebrew/bin/brew install pipenv
}

install_tools () {
/opt/homebrew/bin/brew install git;
/opt/homebrew/bin/brew install gh;
/opt/homebrew/bin/brew install tree;
/opt/homebrew/bin/brew install watch;
/opt/homebrew/bin/brew install wget;
/opt/homebrew/bin/brew install --cask visual-studio-code;
/opt/homebrew/bin/brew install go;
/opt/homebrew/bin/brew install --cask docker;
/opt/homebrew/bin/brew install kubernetes-cli;
}

install_apps () {
/opt/homebrew/bin/brew install --cask firefox
}


xcode-select --install ||
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&
install_sdk;
install_tools;
install_apps;
