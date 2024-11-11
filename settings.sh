#!/bin/bash

git clone https://github.com/BStarcheus/OpenTerminal-Shortcut.git
mv OpenTerminal-Shortcut ~/
git clone https://github.com/BStarcheus/OneDark-Pro.git
mv OneDark-Pro ~/.vscode/extensions/OneDark-Pro+


defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

