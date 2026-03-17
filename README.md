# 🚀 Antigravity + Gitflow AI 代理開發矩陣

這是一套專為 **Google Antigravity** 設計的開發流程模組。透過 **Git Worktree** 與 **AI 角色合約**，實現「一人指揮 AI 軍團」的開發體驗。

---

## 🌟 核心特色
* **環境隔離**：每個任務自動分配獨立 Worktree，AI 互不干擾。
* **嚴格流程**：內建 Gitflow 規範，確保穩定分支與 `develop` 分支的安全。
* **角色契約**：透過 `.antigravity/agent-contract.md` 定義 AI 權限，防止代碼亂竄。

---

## 🤖 如何與此矩陣協作？ (AI Workflow)

一旦設定完成，你只需專注於下達指令，AI 會處理所有 Git 隔離細節：

1.  **啟動環境**：
    ```bash
    ./scripts/setup.sh        # 設定全域技能
    ./scripts/init-matrix.sh   # 初始化開發矩陣
    ```
2.  **喚醒代理**：
    在 Antigravity 對話框輸入：「請讀取 `.antigravity/agent-contract.md`」
3.  **分發任務**：
    輸入：「執行 `scripts/flow.sh feature/new-ui`」，AI 將自動開啟獨立 Worktree 並遵守 BDD 規範開始開發。

---

## 🏗️ 環境依賴 (Prerequisites)

本專案強烈建議連結 **Antigravity Awesome Skills** 全域技能庫以獲得最佳 AI 開發體驗。

### 🚀 快速設定環境
如果你是初次在該設備使用此工作流，可以執行以下腳本自動完成「初始化」：
```bash
# 設定全域技能連結
bash scripts/setup.sh

# 初始化 Worktree 矩陣
bash scripts/init-matrix.sh
```

---

## 🛠️ 快速開始 (Quick Start)

### 1. 複製專案骨架
```bash
git clone https://github.com/basara123789/jake-antigravity-gitflow.git my-project
cd my-project
bash scripts/init-matrix.sh
```

### 2. 啟動指令範例
🔹 **開發新功能 (Feature)**
指令： 「我需要開發一個登入頁面，請啟動 `bdd-commander` 執行 `scripts/flow.sh feature login`。」
> AI 行為：自動建立 `wt/login` 資料夾，產出 `SPEC.feature` 並在此空間實作。

🔹 **執行整合與 Review**
指令： 「請進入 `develop/` 目錄，對 `wt/login` 提交的變更進行整合測試。」
> AI 行為：切換至管理員角色，確保代碼符合品質規範。

---

## 📂 目錄結構
- **根目錄**：穩定分支 (Main Branch)。
- **`develop/`**：整合測試區 (Develop Worktree)。
- **`wt/`**：任務包廂 (Feature Worktrees)。
- **`.antigravity/`**：AI 代理合約與 BDD 指令集。
- **`scripts/`**：自動化控制腳本。

---

👨‍💻 **作者**
Jake - AI 工作流架構師

# 「讓 AI 成為你的工程師，而不是你的打字員。」