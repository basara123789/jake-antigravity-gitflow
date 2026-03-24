#!/bin/bash
# scripts/setup.sh - 自動化環境設定腳本

SKILLS_REPO="https://github.com/your-username/antigravity-awesome-skills.git"
GLOBAL_SKILLS_PATH="$HOME/.gemini/antigravity/skills"
LOCAL_SKILLS_DIR="$HOME/antigravity-awesome-skills"

echo "🚀 開始設定 Antigravity 開發環境..."

mkdir -p "$GLOBAL_SKILLS_PATH"

if [ ! -d "$LOCAL_SKILLS_DIR" ]; then
    echo "📦 正在複製全域技能庫到 $LOCAL_SKILLS_DIR..."
    git clone "$SKILLS_REPO" "$LOCAL_SKILLS_DIR" || echo "⚠️ 複製失敗，請檢查網路或手動將技能庫放入 $LOCAL_SKILLS_DIR"
else
    echo "✅ 技能庫目錄已存在。"
fi

if [ -L "$GLOBAL_SKILLS_PATH/awesome-skills" ] || [ -d "$GLOBAL_SKILLS_PATH/awesome-skills" ]; then
    rm -rf "$GLOBAL_SKILLS_PATH/awesome-skills"
fi

echo "🔗 正在建立全域技能連結..."
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    TARGET_PATH=$(cygpath -w "$LOCAL_SKILLS_DIR/skills")
    LINK_PATH=$(cygpath -w "$GLOBAL_SKILLS_PATH/awesome-skills")
    powershell.exe -Command "New-Item -ItemType Junction -Path '$LINK_PATH' -Target '$TARGET_PATH'"
else
    ln -s "$LOCAL_SKILLS_DIR/skills" "$GLOBAL_SKILLS_PATH/awesome-skills"
fi

if [ $? -eq 0 ]; then
    echo "✅ 全域技能連結建立完成！"
else
    echo "❌ 連結建立失敗。"
fi
echo "🎉 環境設定完成！"
