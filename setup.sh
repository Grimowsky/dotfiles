#!/bin/bash
# setup.sh - create symlinks for dotfiles

# bash
ln -sh ~/dotfiles/bash/.bashrc ~/.bashrc

# Zsh
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

# opencode
ln -sf ~/dotfiles/opencode ~/.config/opencode

# opencode
ln -sf ~/dotfiles/nvim ~/.config/nvim

echo "Symlinks created successfully!"
