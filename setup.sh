#!/usr/bin/env bash
set -euo pipefail

# Detect OS and Architecture
OS=$(uname -s | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m)

if [[ "$ARCH" == "x86_64" ]]; then
    ARCH="amd64"
elif [[ "$ARCH" == "aarch64" || "$ARCH" == "arm64" ]]; then
    ARCH="arm64"
fi

BINARY="argocd-${OS}-${ARCH}"
URL="https://github.com/argoproj/argo-cd/releases/download/${VERSION}/${BINARY}"

if [[ "$VERSION" == "latest" ]]; then
    URL="https://github.com/argoproj/argo-cd/releases/latest/download/${BINARY}"
fi

echo "Downloading ArgoCD CLI for ${OS}/${ARCH} from ${URL}..."
curl -fsSL -o "$BINARY" "$URL"

sudo install -m 555 "$BINARY" /usr/local/bin/argocd
rm "$BINARY"

echo "✅ ArgoCD CLI $(argocd version --client --short) installed successfully."
