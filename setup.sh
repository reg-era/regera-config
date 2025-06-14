#!/bin/bash
set -e

echo "Setting up Neovim config..."

# 1. Ensure ~/.config exists
mkdir -p ~/.config

# 2. Copy or symlink your nvim config folder
# You can use ln -s if you want a symlink (recommended)
if [ -d ~/.config/nvim ]; then
  echo "~/.config/nvim already exists, backing up to ~/.config/nvim.bak"
  mv ~/.config/nvim ~/.config/nvim.bak
fi

# Assuming setup.sh is at repo root and nvim-config is sibling folder
ln -s "$(pwd)/nvim-config" ~/.config/nvim

# 3. Bootstrap lazy.nvim if you use it (adjust path if needed)
if [ ! -d "${XDG_DATA_HOME:-$HOME/.local/share}"/lazy/lazy.nvim ]; then
  echo "Installing lazy.nvim plugin manager..."
  git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/lazy/lazy.nvim
fi

# 4. Install system dependencies (optional)
# For example: rust, node, npm, ripgrep, fd, etc.
# Uncomment and customize below lines:
# echo "Installing dependencies..."
# sudo apt update
# sudo apt install -y ripgrep fd-find nodejs npm

# 5. Install rust-analyzer (optional)
# if ! command -v rust-analyzer &> /dev/null; then
#   echo "Installing rust-analyzer..."
#   curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-linux -o ~/.local/bin/rust-analyzer
#   chmod +x ~/.local/bin/rust-analyzer
# fi

# 6. Launch nvim to install plugins (lazy.nvim auto installs on startup)
echo "Launching nvim to install plugins..."
nvim --headless +Lazy! +qa

echo "Setup complete!"
