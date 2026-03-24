#!/bin/bash
COMMAND=$1
NAME=$2

case $COMMAND in
  "feature")
    git worktree add -b "feature/$NAME" "wt/feature-$NAME" develop
    echo "✅ Worktree Created: wt/feature-$NAME"
    echo "🚀 Agent is ready to work on branch feature/$NAME"
    ;;
  "clean")
    git worktree prune
    echo "🧹 Cleaned unused worktrees."
    ;;
  *)
    echo "Usage: flow {feature|clean} {task-name}"
    ;;
esac