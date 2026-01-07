🚀 Antigravity + Gitflow AI 代理開發矩陣 (Template)
這是一套專為 Google Antigravity 設計的開發流程模組。透過 Git Worktree 與 AI 角色合約，實現「一人指揮 AI 軍團」的開發體驗。

🌟 核心特色
環境隔離：每個任務自動分配獨立 Worktree，AI 互不干擾。

嚴格流程：內建 Gitflow 規範，確保 main 與 develop 分支的安全。

角色契約：透過 .antigravity/agent-contract.md 定義 AI 權限，防止代碼亂竄。

🛠️ 快速開始 (Quick Start)
1. 複製專案骨架
請在你的終端機執行：

Bash

git clone https://github.com/basara123789/jake-antigravity-gitflow.git my-project
## my-project可以改自己的專案名稱，記得之後的也都要改
cd my-project/main
mkdir ../wt
git checkout develop
git checkout main
git worktree add ../develop develop

2. 啟動 Antigravity
開啟 Antigravity 軟體，選擇 my-project 總目錄。

啟動咒語：

「請讀取 .antigravity/agent-contract.md。從現在起，你是我這套流程的 AI 代理人，請遵守 Worktree 規範並準備接受指令。」

🎮 實戰指令範例
你可以直接對 Antigravity 下達以下指令，觀察它如何自動化：

🔹 情境：開發新功能 (Feature)
指令： 「我需要開發一個登入頁面，請執行 scripts/flow.sh 建立 feature/login 任務，並在該空間完成實作。」

AI 會做： 自動開好 wt/login 資料夾，並在那裡開始寫 Code。

🔹 情境：執行測試與 Review
指令： 「請進入 develop/ 目錄，對 ../wt/login 提交的變更進行整合測試。」

AI 會做： 扮演 Reviewer 角色，確保新功能不會弄壞主線。

📂 目錄結構說明
main/: 行政指揮中心（存放合約、腳本、發布版本）。

develop/: 整合測試區（AI 的練兵場）。

wt/: 任務包廂（每個 AI Agent 的獨立辦公室）。

👨‍💻 作者
Jake - AI 工作流架構師

「讓 AI 成為你的工程師，而不是你的打字員。」
