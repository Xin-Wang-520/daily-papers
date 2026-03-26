#!/bin/zsh
set -euo pipefail

ROOT_DIR="/Users/wangxin/Desktop/WeChat Official Account/Github_daily_papers"

cd "$ROOT_DIR"

git add .

if git diff --cached --quiet; then
  echo "No changes to publish."
  exit 0
fi

STAMP="$(date '+%Y-%m-%d %H:%M:%S')"
git commit -m "update daily papers ${STAMP}"
git push
