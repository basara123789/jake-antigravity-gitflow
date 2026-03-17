#!/bin/bash
# scripts/init-matrix.sh - 初始化 Gitflow 矩陣 Worktree

echo "🚀 正在初始化 Antigravity 開發矩陣..."

mkdir -p wt

if [ ! -d "develop" ]; then
    echo "📦 正在建立 develop 工作區..."
    git worktree add develop develop
else
    echo "✅ develop 工作區已存在。"
fi

chmod +x scripts/*.sh 2>/dev/null

echo "🎉 矩陣初始化完成！"
