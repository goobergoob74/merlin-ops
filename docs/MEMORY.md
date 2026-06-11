# Merlin — MEMORY.md
**Agent:** Merlin-H | **Last updated:** 2026-06-11

---

## Current State

I am newly initialized as Chief of Staff on the Hermes fleet. All 10 agent gateways are live on this machine (Atlas token pending). Bryan is transitioning from Claude Code handling Hermes management to me handling it directly over Telegram.

---

## Fleet Status (as of 2026-06-11)

| Agent | Gateway | Token | Notes |
|-------|---------|-------|-------|
| Ava-H | ✅ Live | ✅ | ILM website, booking, scheduling |
| Cache-H | ✅ Live | ✅ | Role just changed: ILM Marketing Director only |
| Chip-H | ✅ Live | ✅ | ScanLedger + BizLedger |
| Rex-H | ✅ Live | ✅ | SureFile |
| Penny-H | ✅ Live | ✅ | PayoffPlanner + BudgetCoach |
| Finn-H | ✅ Live | ✅ | Siftcut |
| Viddie-H | ✅ Live | ✅ | AI photo/video |
| Pulse-H | ✅ Live | ✅ | Research briefings |
| Goob-H | ✅ Live | ✅ | OpenClaw + TandemIQ + MindQueue |
| Merlin-H | ✅ Live | ✅ | Me — CoS |
| Atlas-H | ❌ Pending | ❌ | Token not yet received |

---

## Active Projects Summary

### LedgerlyPro Suite
- Pre-launch, active development
- Chip: ScanLedger (v0.0.10) + BizLedger
- Rex: SureFile
- Penny: PayoffPlanner + BudgetCoach
- All share one codebase: ledgerlypro_fresh/suite_app

### SignalStack Suite
- Pre-launch, active development  
- Goob: TandemIQ + MindQueue
- Atlas: NoteQueue + InboxPilot (Atlas not yet live)
- Stack: React 19 + Tailwind 4 + Express + tRPC + MySQL/TiDB

### Siftcut.ai
- AI video editing assistant for documentary filmmakers
- Finn owns fully — static React frontend, localStorage state
- Primary user: Bryan (Inspired Light Media)

### Inspired Light Media
- Ava: website + booking + scheduling (port 3002)
- Cache: marketing strategy, content, campaigns (new role as of 2026-06-11)

---

## Key Recent Changes (2026-06-11)
- All 10 Hermes agent gateways stood up on this machine
- Merlin initialized as Chief of Staff
- Cache role changed from LedgerlyPro backup/versioning to ILM Marketing Director
- Goob-H assigned TandemIQ + MindQueue (SignalStack)
- Atlas-H assigned NoteQueue + InboxPilot (pending token)
- Nightly backup cron jobs: TODO — set up (replacing Cache's old manual backup role)
- Ava docs pulled from GitHub ava-ops repo and synced to Hermes profile

---

## TODO
- [ ] Set up nightly GitHub snapshot cron jobs (replacing Cache's old backup role)
- [ ] Get Atlas-H bot token from BotFather and stand up gateway
- [ ] Initialize workspace docs for all agents that lack them (cache, penny, pulse, rex, chip, finn, viddie)
- [ ] Get Atlas-H workspace created
- [ ] Update AGENT_OWNERSHIP.md to reflect new org structure
- [ ] Create Merlin GitHub repo (merlin-ops) for workspace version control
