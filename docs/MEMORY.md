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
| Rex-H | ✅ Live | ✅ | SureFile — live at surefile.ledgerlypro.ai (surefile.io itself still unregistered) |
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

## Mission Control ownership (confirmed 2026-07-22)
`AGENT_ROSTER.md` lists Mission Control (`mission.brightpathlabs.ai`) under Merlin. Pulse's own memory carried an older 2026-04-30 note transferring dashboard ownership to Pulse, with no record anywhere of a later re-transfer — flagged as an undocumented gap by the 2026-07-22 fleet memory audit. **Confirmed directly with Bryan on 2026-07-22: Merlin is the correct, intended owner going forward.** No further reconciliation needed; this note exists so the "how did this happen" question doesn't resurface unanswered.

---

## TODO
- [x] SureFile tunnel — resolved 2026-07-18 by serving it as surefile.ledgerlypro.ai instead of waiting on surefile.io registration
- [ ] Bryan to re-run `cloudflared login` for the signalstack.studio zone so that tunnel can be routed correctly (cert is now scoped to ledgerlypro.ai, not signalstack.studio — still needs its own pass)
- [ ] Rewrite Goob's obsolete GOOB_CTO_CONTEXT.md / IDENTITY.md content (still describes old CTO role) — note: `goob/docs/MEMORY.md` itself was corrected 2026-07-22 with a CURRENT STATE section; GOOB_CTO_CONTEXT.md and IDENTITY.md are still untouched
- [x] Clean up Pulse's stale Nova/Quinn/Sage roster reference in docs/MEMORY.md — resolved 2026-07-21 (Pulse's own commit `c1e10aa`, "Fix stale agent roster: retired Nova/Quinn/Sage, outdated Goob/Cache roles")
- [ ] Review whether Ava's generic-default SOUL.md is intentional or a gap
- [ ] Reconcile Siftcut version/remote split between `products/siftcut` (deployed) and Finn's workspace copy — clarified 2026-07-22: `products/siftcut` is the stale/orphaned one (package.json 0.21.0, no recent commits); the real deployed copy is `agents/finn/siftcut/working/repo` (0.22.0, live at siftcut.ai via `com.finn.siftcut.server`). Still needs an actual reconciliation/cleanup pass, not just identification.
