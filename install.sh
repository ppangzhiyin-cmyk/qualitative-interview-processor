#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/Evie0715/qualitative-interview-processor.git"
SKILL_NAME="qualitative-interview-processor"
CODEX_HOME_DIR="${CODEX_HOME:-$HOME/.codex}"
TARGET_DIR="$CODEX_HOME_DIR/skills/$SKILL_NAME"

mkdir -p "$CODEX_HOME_DIR/skills"

if ! command -v git >/dev/null 2>&1; then
  echo "Error: git is required to install this skill." >&2
  exit 1
fi

if [ -d "$TARGET_DIR/.git" ]; then
  git -C "$TARGET_DIR" pull --ff-only
else
  rm -rf "$TARGET_DIR"
  git clone "$REPO_URL" "$TARGET_DIR"
fi

echo "Installed $SKILL_NAME to $TARGET_DIR"
echo "Restart Codex or open a new Codex task, then type: 访谈整理skill"
