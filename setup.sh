#!/usr/bin/env bash

set -e

echo "🚀 Starting WSL dev setup..."

# ---------------------------
# 1. System update
# ---------------------------
echo "📦 Updating system..."
sudo apt update && sudo apt upgrade -y

# ---------------------------
# 2. Core dev tools
# ---------------------------
echo "🛠 Installing core tools..."
sudo apt install -y \
  git \
  curl \
  wget \
  build-essential \
  unzip \
  neovim \
  zsh

# ---------------------------
# 3. Set Neovim as default editor
# ---------------------------
echo "⚙️ Configuring git editor..."
git config --global core.editor "nvim"

# Optional alias (vim -> nvim)
echo "alias vim='nvim'" >> ~/.bashrc
echo "alias vi='nvim'" >> ~/.bashrc

# ---------------------------
# 4. Install Oh My Zsh (if not installed)
# ---------------------------
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "🐚 Installing Oh My Zsh..."
  RUNZSH=no sh -c \
    "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "✅ Oh My Zsh already installed"
fi

# ---------------------------
# 5. Set Zsh as default shell
# ---------------------------
echo "🐚 Setting Zsh as default shell..."
chsh -s $(which zsh) || true

# ---------------------------
# 6. Create dev workspace
# ---------------------------
echo "📁 Creating dev workspace..."
mkdir -p ~/projects

# ---------------------------
# Done
# ---------------------------
echo "🎉 Setup complete!"
echo "👉 Restart WSL for all changes to take effect"
