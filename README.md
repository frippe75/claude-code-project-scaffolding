# Running the Claude Scaffold Script from GitHub

This guide explains how to run the Claude Project Scaffold script directly from GitHub using your terminal.

## ✅ Quick Usage

You can initialize a new Claude-ready project directory with one command:

### Using `curl`
```bash
bash <(curl -fsSL https://raw.githubusercontent.com/USERNAME/REPO/BRANCH/scaffold-claude-project.sh) my-project
```

### Using `wget`
```bash
bash <(wget -qO- https://raw.githubusercontent.com/USERNAME/REPO/BRANCH/scaffold-claude-project.sh) my-project
```

Replace `USERNAME`, `REPO`, and `BRANCH` with the appropriate values for your repository.

## 🛡️ Safer Alternative

If you'd like to inspect the script before running it:

```bash
curl -o scaffold.sh https://raw.githubusercontent.com/USERNAME/REPO/BRANCH/scaffold-claude-project.sh
chmod +x scaffold.sh
./scaffold.sh my-project
```

## 📁 What It Generates

This will scaffold a new Claude Code project with the following structure:

```
my-project/
├── CLAUDE.md
├── CONTRIBUTING.md
├── README.md
├── TESTING.md
├── dist/
│   └── README.md
├── sprints/
│   └── sprint-000-placeholder.md
└── backlogs/
    └── backlog-000-placeholder.md
```

## Requirements
- A POSIX-compliant shell (e.g., `bash`)
- `curl` or `wget` installed

## Constraints
- The scaffold contains no emojis.
- No AI or Claude attribution is injected into generated files or commits.

---

For more advanced bootstrapping (e.g., `git init`, `.gitignore` setup, CLAUDE integration), edit the script before use or extend it in your fork.
