#!/bin/zsh
set -euo pipefail

PROJECT_DIR="/Users/wangxin/Desktop/WeChat Official Account"
TARGET_DIR="$PROJECT_DIR/Github_daily_papers/docs"

mkdir -p "$TARGET_DIR/archive"

cp "$PROJECT_DIR/output/daily-papers-site.html" "$TARGET_DIR/index.html"
cp "$PROJECT_DIR/output/daily-papers-site-data.json" "$TARGET_DIR/daily-papers-site-data.json"
cp "$PROJECT_DIR/output/archive/"*.json "$TARGET_DIR/archive/"

echo "Synced GitHub Pages trial files to $TARGET_DIR"
