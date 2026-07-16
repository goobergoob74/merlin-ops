# Merlin — MEMORY.md
**Agent:** Merlin-H | **Last updated:** 2026-07-15

---

## Current State

Chief of Staff on the Hermes fleet. All 11 agent gateways are live on this machine. All agents report directly to Bryan for now (flattened 2026-07-15); Merlin's CoS role is cross-agent coordination and Hermes fleet administration, not a reporting layer. This machine runs Hermes exclusively — OpenClaw is a separate, out-of-scope system on a different Mac Mini.

---

## Fleet Status (as of 2026-07-15)

| Agent | Gateway | Token | Notes |
|-------|---------|-------|-------|
| Ava-H | ✅ Live | ✅ | ILM website, booking, scheduling |
| Cache-H | ✅ Live | ✅ | ILM Marketing Director |
| Chip-H | ✅ Live | ✅ | ScanLedger + BizLedger |
| Rex-H | ✅ Live | ✅ | SureFile (tunnel blocked — surefile.io not registered) |
| Penny-H | ✅ Live | ✅ | PayoffPlanner + BudgetCoach |
| Finn-H | ✅ Live | ✅ | Siftcut |
| Viddie-H | ✅ Live | ✅ | AI photo/video |
| Pulse-H | ✅ Live | ✅ | Research briefings |
| Goob-H | ✅ Live | ✅ | Personal Assistant (workouts/scheduling) + PantryMaid Dev |
| Merlin-H | ✅ Live | ✅ | Me — CoS |
| Atlas-H | ✅ Live | ✅ | Full SignalStack suite (consolidated 2026-07-15) |

---

## Active Projects Summary

### LedgerlyPro Suite
- Live at ledgerlypro.ai, active development
- Chip: ScanLedger + BizLedger
- Rex: SureFile
- Penny: PayoffPlanner + BudgetCoach
- Shared backend/embedded-pages codebase: `products/ledgerlypro/apps/payoffplanner`; ScanLedger/BizLedger also have separate standalone codebases behind the embedded versions

### SignalStack Suite
- Pre-launch, active development
- Atlas: full suite — TandemIQ, MindQueue, NoteQueue, InboxPilot (consolidated under Atlas 2026-07-15; Goob no longer owns TandemIQ/MindQueue)
- Codebase: `products/signalstack/app`, single shared server/client, port 3010
- Target domain signalstack.studio — tunnel blocked on Bryan re-running `cloudflared login` for the correct zone

### Siftcut.ai
- AI video editing assistant for documentary filmmakers
- Finn owns fully — codebase at `products/siftcut`
- Primary user: Bryan (Inspired Light Media)

### Inspired Light Media
- Ava: website + booking + scheduling (port 3002)
- Cache: marketing strategy, content, campaigns

### PantryMaid
- Goob: full ownership — `products/pantrymaid`, apps/api (3009) + apps/web (5173), tunneled to pantrymaid.brightpathlabs.ai

---

## Key Recent Changes (2026-07-15)
- Org restructure: Goob moved off SignalStack (TandemIQ/MindQueue) to Personal Assistant + PantryMaid; Atlas consolidated as sole owner of the full SignalStack suite
- Reporting flattened: all 11 agents report directly to Bryan for now, not through Merlin
- Confirmed this machine is Hermes-only; OpenClaw is out of scope (separate Mac Mini)
- Old BPL Dashboard (ports 4000/4001) confirmed dead, retired from docs
- bpl_status repo divergence resolved (clean merge)
- Fleet-wide doc sweep: stale `/Users/goob/` paths, "Goob (CTO)" titles, and nested chain-of-command diagrams corrected across agent docs

---

## TODO
- [ ] Bryan to register surefile.io (or provide an alternate domain) before SureFile tunnel can go live
- [ ] Bryan to re-run `cloudflared login` for the signalstack.studio zone so the tunnel can be routed correctly
- [ ] Rewrite Goob's obsolete GOOB_CTO_CONTEXT.md / IDENTITY.md content (still describes old CTO role)
- [ ] Clean up Pulse's stale Nova/Quinn/Sage roster reference in docs/MEMORY.md
- [ ] Review whether Ava's generic-default SOUL.md is intentional or a gap
- [ ] Reconcile Siftcut version/remote split between `products/siftcut` (deployed) and Finn's workspace copy
