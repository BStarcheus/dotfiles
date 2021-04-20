#!/bin/bash

# Install Oh My Zsh
if [[ ! -d $HOME/.oh-my-zsh ]]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# Install Spaceship Prompt
if [[ ! -d $HOME/.oh-my-zsh/custom/themes/spaceship-prompt ]]; then
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
fi

# Get current dir
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Symbolic links
ln -sfv "$DOTFILES_DIR/.zshrc" ~
ln -sfv "$DOTFILES_DIR/.zsh_exports" ~

ln -sfv "$DOTFILES_DIR/.vimrc" ~
mkdir -pv "$HOME/.vim/colors"
ln -sfv "$DOTFILES_DIR/.vim/colors/bstar.vim" "$HOME/.vim/colors/bstar.vim"

ln -sfv "$DOTFILES_DIR/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/.gitignore_global" ~
