# 🚀 Antigravity + Gitflow AI 代理開發矩陣 (Matrix v2.1)

這是一套專為 **Google Antigravity** 設計的高級開發流程框架。結合了 **Git Worktree 隔離**、**BDD (行為驅動開發)** 以及 **CDP 全自動化授權**，實現「一人指揮 AI 軍團」的開發體驗。

> **"讓 AI 成為你的工程師，而不是你的打字員。"**

---

## 🌟 核心特色 (Core Features)

*   **扁平化管理 (Flat Structure)**：專案根目錄即為 `main` 分支，操作直觀且路徑精簡。
*   **環境隔離 (Worktree Isolation)**：每個任務自動分配獨立 `wt/` 空間，AI 互不干擾。
*   **規格驅動 (BDD Driven)**：強制執行 `SPEC.feature` 先行，確保 AI 實作邏輯符合願景。
*   **全自動駕駛 (CDP Auto-Accept)**：整合 CDP 協議，消除「Requesting permission」彈窗地獄。

---

## � 環境準備 (Prerequisites)
在使用本矩陣前，請確保你的開發環境具備以下工具：
- **[Git](https://git-scm.com/)**: 用於管理 Worktree 與版本控制。
- **Bash Shell**: 執行 `scripts/` 下的自動化腳本。
- **[Antigravity AI Agent](https://github.com/google-deepmind/antigravity)**: 確保已啟用代理協議讀取權限。

---

## �🛠️ 環境初始化 (Quick Start)

### 1. 克隆專案與配置
```bash
git clone https://github.com/basara123789/jake-antigravity-gitflow.git
cd jake-antigravity-gitflow
```

### 2. 初始化全域技能 (Awesome Skills)
執行設定腳本，自動建立 Antigravity 的技能連結：
```bash
bash scripts/setup.sh
```

### 3. 初始化開發矩陣
建立 `develop` 分支工作區與 `wt/` 目錄：
```bash
bash scripts/init-matrix.sh
```
> 💡 **提醒**：執行 `init-matrix.sh` 前，請確保專案已進行過至少一次 Git commit（例如完成初始化），否則 Worktree 可能會因找不到 HEAD 而建立失敗。

---

## 🚀 開發工作流 (Workflow)

### 1. 建立功能分支 (Start Feature)
使用 `flow.sh` 快速建立獨立工作區，目錄會自動生成於 `wt/feature-<name>`：
```bash
# 語法: bash scripts/flow.sh feature <task-name>
bash scripts/flow.sh feature login-page
```

### 2. 撰寫開發規格 (BDD First)
在 AI 開始寫 Code 前，請確保該工作區根目錄存在 `SPEC.feature`。
> 💡 *這是一個合約細則，AI 必須根據此檔案進行實行。範本可參考專案根目錄。*

### 3. 清理環境 (Clean Up)
任務完成並合併到 `develop` 後，執行清理以釋放資源：
```bash
bash scripts/flow.sh clean
```

---

## ✨ 全域技能應用 (Global Skills)
矩陣透過 `scripts/setup.sh` 自動與你的全域技能庫進行連結。

*   **技能連結點**：`~/.gemini/antigravity/skills/awesome-skills`
*   **如何套用**：在與 AI 溝通時，直接下令「載入全域技能庫中的 `awesome-skills`」，AI 即可讀取該目錄下的各項專業技能（如 `ui-ux-pro-max`, `design-expert` 等）。
*   **自定義庫**：若需更換技能來源，請至 `scripts/setup.sh` 修改 `SKILLS_REPO` 變數。

---

## 🏁 任務交付規範 (Completion)
AI 代理在完成功能開發後，應遵循以下交付規範：
1.  **實作報告**：在 `wt/feature-[name]` 根目錄產出一份 `Implementation Report.md`，詳述功能改動點、技術決策與測試驗證。
2.  **規範提交**：所有 Commit 必須符合 **Conventional Commits** 格式（例如: `feat:`, `fix:`, `refactor:`）。
3.  **整合驗證**：在 `develop` 工作區進行全系統冒煙測試，確保新功能不影響其他模組。
4.  **指揮官審核**：待測試通過後，由人類指揮官進行最終分支合併 (Merge)。

---

## 🎮 指令指南 (Commander Protocols)
在專案根目錄開啟 Antigravity 後，輸入以下啟動咒語以獲得最佳體驗：

- **喚醒指揮官 (Wake Up Agent)**
  > 「請讀取 `.antigravity/agent-contract.md`。你是我的 AI 開發代理人，請遵守 Worktree 規範並載入全域技能庫中的 `awesome-skills`。」

- **調用專屬專家 (Skill Combo)**
  > 「執行 `scripts/flow.sh feature [功能名稱]` 建立空間。在實作時，請調用全域技能中的 `ui-ux-pro-max` 來優化前端視覺。」

- **啟動新功能任務 (Feature Task)**
  > 「我需要開發一個 [新功能]，請啟動 `scripts/flow.sh`。在開始實作前，請先在 `wt/` 空間內撰寫 BDD 規格。」

---

## 🤖 代理協議 (Agent Contract)
本專案嚴格遵循位於 `.antigravity/agent-contract.md` 的開發協議。任何 AI 代理在進入本專案時，應優先讀取該協議以瞭解權限與開發規範。

---

## 📁 目錄結構 (Structure)

- `/` : `main` 分支，存放核心協定與 README。
- `/develop` : 整合測試區 (Worktree)。
- `/scripts` : 自動化流程工具。
- `/wt` : 任務隔離區，每個 Feature 有獨立資料夾。
- `.antigravity` : 代理合約與提示詞定義。

---

*Made with ❤️ for AI-native development.*