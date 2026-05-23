#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

rm -rf "$ROOT_DIR/trash"

if [[ -d "$ROOT_DIR/apps" ]]; then
  find "$ROOT_DIR/apps" -mindepth 1 -maxdepth 1 -type d ! -name 'demo-*' -exec rm -rf {} +
fi
