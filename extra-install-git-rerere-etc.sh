#!/usr/bin/env bash

echo "git rerere..."

echo " - enable rerere"
echo "  Prefer to keep the git history clean: if necessary rebase on another branch instead of merging it into yours."
echo "  To smoothen the experience, enable rerere 'reuse recorded resolution' in git"
git config --global rerere.enabled true

echo " - For the same reasons, use rebase-on-pull instead of merge-on-pull"
git config --global pull.rebase preserve

echo " - disable fast-forward merges"
git config --global merge.ff false

echo "git rerere [done]"
