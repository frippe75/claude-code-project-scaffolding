#!/bin/bash
set -euo pipefail

PROJECT_NAME="$1"

if [[ -z "$PROJECT_NAME" ]]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

mkdir -p "$PROJECT_NAME"/{sprints,backlogs,dist}

cat > "$PROJECT_NAME/README.md" <<EOF
# \$PROJECT_NAME

> Replace with a concise overview of the project purpose.
EOF

cat > "$PROJECT_NAME/CONTRIBUTING.md" <<EOF
# Contributing Guidelines

This project follows a structured Claude Code sprint model.

- Do not use AI attribution in commits
- Avoid emojis in documentation
- Ensure CLAUDE.md is updated at the end of every sprint
EOF

cat > "$PROJECT_NAME/TESTING.md" <<EOF
# Testing Strategy

This document outlines the current test coverage strategy.

- Unit tests for core logic and parsers
- Integration tests across tool-to-infrastructure bindings
- End-to-end validation against target platform (e.g., VME, MCP)
EOF

cat > "$PROJECT_NAME/dist/README.md" <<EOF
# dist/

Build output and compiled assets, if applicable, go here.
EOF

cat > "$PROJECT_NAME/sprints/sprint-000-placeholder.md" <<EOF
# Sprint 000: Initialization Scaffolding

This is a placeholder sprint.

Tasks:
- [ ] Run scaffold script
- [ ] Replace CLAUDE.md placeholders
- [ ] Define next sprint
EOF

cat > "$PROJECT_NAME/backlogs/backlog-000-placeholder.md" <<EOF
# Backlog 000: Initial Ideas (Placeholder)

This backlog file is a placeholder and should be replaced by actual backlog entries.

- Enable dynamic discovery of tools via intent
- Add feedback-driven tool adjustment
EOF

cat > "$PROJECT_NAME/CLAUDE.md" <<'EOF'
# CLAUDE.md — Project Brain Interface [PLACEHOLDER TEMPLATE]

This file is **agent-controlled** and currently initialized with placeholder content only.

The agentic AI must:
- Replace the placeholder content below with real project-specific information
- Rewrite or remove all examples once actual project context exists
- Preserve structure and clarity when updating

---

## Vision [PLACEHOLDER]

This section is a **placeholder** and meant to inspire the AI agent to define the project's high-level goal.

Example:
This system transforms infrastructure management into natural language interactions, serving as a semantic layer over underlying tooling.

---

## Core Philosophy: NLP-First Design [PLACEHOLDER]

These principles are **example scaffolding only** and should be rewritten based on the specific project context.

### Natural Language as the Primary Interface
- Intent parsing and entity recognition
- Role- and context-aware routing
- Informal query handling
- Feedback-driven iteration

### API Abstraction via Semantics
Use semantic resource access over raw endpoint overloads:

```
# Instead of:
get-zones, get-templates, get-groups

# Use:
get_resources(type, intent, context)
```

---

## Sprint Development Workflow [PLACEHOLDER]

This workflow description is a reusable **scaffold** for any Claude Code sprint-driven project. The AI should modify it as appropriate.

- **Current Sprint**: Documented below
- **Recent Sprints**: Two latest sprints kept for reference
- **Sprint Archive**: Older sprints moved to `/sprints/`
- **Backlogs**: Ideas and future tasks in `/backlogs/`

---

## Sprint 001: Intelligent Resource Discovery [PLACEHOLDER]

This sprint is a **placeholder** and should be removed or archived once real sprints are defined.

**Goal**: Replace fragmented endpoints with unified, intent-driven access.

**Tasks**:
- Implement `get_resources(type, intent, role)`
- Filter resources based on session context
- Semantic search by name or label

**Validation**:
- Sample prompt: "List all small VMs"

**Branch**: `feature/resource-discovery-unified-endpoint`  
**Docs**: `sprint-001-intelligent-resource-discovery.md`

---

## Sprint 002: Dynamic Name Resolution [PLACEHOLDER]

This sprint is a **placeholder** and should be removed or archived once real sprints are defined.

**Goal**: Enable fuzzy name matching instead of relying on raw identifiers.

**Tasks**:
- NameResolver with cache
- Fuzzy resolution for templates, service plans, zones

**Validation**:
- Prompt: "Ubuntu 20.04" resolves to correct template

**Branch**: `feature/dynamic-name-resolution`  
**Docs**: `sprint-002-dynamic-name-resolution.md`

---

## Sprint Archive

- [sprint-001-intelligent-resource-discovery.md](./sprints/sprint-001-intelligent-resource-discovery.md)
- [sprint-002-dynamic-name-resolution.md](./sprints/sprint-002-dynamic-name-resolution.md)

---

## Backlog

- [backlog-000-placeholder.md](./backlogs/backlog-000-placeholder.md)

---

## Current Sprint: Sprint 003 - Capability Discovery and Role-Aware Filtering [PLACEHOLDER]

This sprint is a **placeholder** and should be replaced when actual planning is performed.

**Goal**: Enable discovery of supported operations and restrict visibility based on roles.

**Planned Tasks**:
- Discover available tools per role
- Build capability matrix
- Support permission-based output filtering

**Branch**: `feature/intelligent-capability-discovery`  
**Status**: Not yet started

---

## Project Setup Checklist (for agent)

These tasks should be evaluated and completed by the agent during project early days.
It's not manadatory to complete them all and please ask relevant question about the project 
to get them done at some point.

- [ ] Create a `.gitignore` suited for the project language/tooling  
- [ ] Initialize Git repository with optional remote  
- [ ] Generate and insert appropriate license (`LICENSE`)  
- [ ] Prepare `.env` or Claude configuration file  
- [ ] Add training data directory or pointer (e.g. `ai-data/`)  
- [ ] Create initial test harness or use stubs in `TESTING.md`  
- [ ] Add changelog or tagging strategy (optional)  
- [ ] Ensure `.gitignore` blocks secrets, build artifacts, and Claude state files  
- [ ] Complete README.md with updated goals and usage

---

## Constraints

- No emojis in this file or in commit messages
- Status markers must follow `[ ]` or `[x]` form
- Do not include any Claude attribution in commits
EOF
