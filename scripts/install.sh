#!/usr/bin/env bash
set -euo pipefail

GITHUB="https://api.github.com/repos"
REPO="$GITHUB/thalestmm/dots"

OS=$(uname -s)
ARCH=$(uname -m)

echo "$OS $ARCH"

CURRENT_VERSION=$(curl -s "$REPO/releases/latest" | jq -r .tag_name)

echo "Current version: $CURRENT_VERSION"
