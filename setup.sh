#!/bin/bash
# setup.sh - create symlinks for dotfiles

# bash
ln -sh ~/dotfiles/bash/.bashrc ~/.bashrc

# Zsh
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

echo "Symlinks created successfully!"

