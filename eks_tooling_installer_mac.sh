#!/bin/zsh

set -e

echo "Orlando DevOps EKS workshop installer"

echo "Updating homebrew..."
which -s brew
if [[ $? != 0 ]] ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi

echo "Installing AWS CLI..."
brew install awscli

echo "Installing kubectl..."
brew install kubectl
echo 'alias k=kubectl' >>~/.zshrc
source ~/.zshrc

echo "Installing eksctl..."
brew tap weaveworks/tap
brew install weaveworks/tap/eksctl

echo "Installing helm..."
brew install helm

echo "Installing docker desktop..."
brew install --cask docker

echo "Setup complete.

