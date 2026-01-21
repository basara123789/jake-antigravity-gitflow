# 🚀 Antigravity + Gitflow AI 代理開發矩陣

這是一套專為 **Google Antigravity** 設計的開發流程模組。透過 **Git Worktree** 與 **AI 角色合約**，實現「一人指揮 AI 軍團」的開發體驗。

---

## 🌟 核心特色
* **環境隔離**：每個任務自動分配獨立 Worktree，AI 互不干擾。
* **嚴格流程**：內建 Gitflow 規範，確保 `main` 與 `develop` 分支的安全。
* **角色契約**：透過 `.antigravity/agent-contract.md` 定義 AI 權限，防止代碼亂竄。

---

## 🛠️ 快速開始 (Quick Start)

### 1. 複製專案骨架
請在你的終端機執行：

```bash
# 複製範本
git clone https://github.com/basara123789/jake-antigravity-gitflow.git my-project
cd my-project/main

# 建立本地結構 (my-project 可自訂為你的專案名)
mkdir ../wt
git checkout develop
git checkout main
git worktree add ../develop develop 
```

### 2. 啟動 Antigravity
開啟 Antigravity 軟體，選擇 my-project 總目錄。

輸入啟動咒語： 「請讀取 .antigravity/agent-contract.md。從現在起，你是我這套流程的 AI 代理人，請遵守 Worktree 規範並準備接受指令。並且在執行所有任務時，必須先進行 RaR (Rephrase and Respond)，並在產出任何解決方案前，透過 CoT (Chain of Thought) 展示你一步步分析技術限制與因果關係的過程。」

🎮 實戰指令範例

🔹 情境 A：開發新功能 (Feature)
指令： 「我需要開發一個登入頁面，請執行 scripts/flow.sh 建立 feature/login 任務，並在該空間完成實作。」

AI 行為：自動開好 wt/login 資料夾，並在獨立空間寫 Code。

🔹 情境 B：執行測試與 Review
指令： 「請進入 develop/ 目錄，對 ../wt/login 提交的變更進行整合測試。」

AI 行為：扮演 Reviewer 角色，確保新功能不會破壞主線。

📂 目錄結構說明

main/：行政指揮中心（存放合約、腳本、發布版本）。

develop/：整合測試區（AI 的練兵場）。

wt/：任務包廂（每個 AI Agent 的獨立辦公室）。

## 📦 既有專案導入指南 (Migration)

### 1. 建立結構

mkdir new-workspace && cd new-workspace
mkdir wt
mv /path/to/old-project ./main

### 2. 初始化 Gitflow

Bash

cd main
git checkout -b develop
git push -u origin main develop
git worktree add ../develop develop

### 3. 植入靈魂

將本模板的 .antigravity/ 與 scripts/ 複製到 new-workspace/main/ 即可完成。

---

👨‍💻 作者
Jake - AI 工作流架構師

# 「讓 AI 成為你的工程師，而不是你的打字員。」