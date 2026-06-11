#!/bin/bash
# Nightly GitHub snapshot — runs on Merlin machine
# Owned by Merlin-H cron

DATE=$(TZ='America/Los_Angeles' date '+%Y-%m-%d %H:%M PT')
REPOS=(
  "/Users/Merlin/app_creation/agents/ava"
  "/Users/Merlin/app_creation/agents/merlin"
  "/Users/Merlin/app_creation/agents/bpl_status"
  "/Users/Merlin/app_creation/agents/siftcut"
)

for REPO in "${REPOS[@]}"; do
  if [ -d "$REPO/.git" ]; then
    NAME=$(basename "$REPO")
    cd "$REPO"
    # Only commit if there are changes
    if ! git diff --quiet || ! git diff --staged --quiet || [ -n "$(git ls-files --others --exclude-standard)" ]; then
      git add -A
      git commit -m "nightly snapshot $DATE" 2>&1
      git push 2>&1
      echo "[$NAME] snapshot pushed"
    else
      echo "[$NAME] no changes"
    fi
  fi
done
