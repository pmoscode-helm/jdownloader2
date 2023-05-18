#!/usr/bin/env bash

set -e

FOUND=$(echo $* | grep CHANGELOG.md | wc -l)
echo "Modified files: $*"
echo "Modified files count: $FOUND"

if [ "$FOUND" -eq 0 ]; then
  rm -f CHANGELOG.md
  git-changelog -o CHANGELOG.md -c conventional -t keepachangelog .

  res=$(git status --porcelain | grep -c "CHANGELOG.md")
  if [ "$res" -gt 0 ]; then
    echo "You have forgotten to update the changelog: failing commit"
    exit 30
  fi
fi
