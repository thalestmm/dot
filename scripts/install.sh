#!/usr/bin/env bash
set -euo pipefail

GITHUB="https://github.com"
REPO="$GITHUB/thalestmm/dots"

OS=$(uname -s)
ARCH=$(uname -m)

echo "$OS $ARCH"
