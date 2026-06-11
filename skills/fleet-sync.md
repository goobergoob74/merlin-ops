# SKILL: fleet-sync
## Purpose
Sync all agent workspace docs across Goob machine, Merlin machine, and GitHub. Run this any time agent docs have been updated to ensure all three locations are in agreement.

## When to use
- After any agent's SOUL.md, AGENTS.md, MEMORY.md, or ROLLING_CONTEXT.md is updated
- After AGENT_OWNERSHIP.md or PORT_REGISTRY.md changes
- When Bryan asks if docs are in sync
- Before starting a major new project phase

## Steps

### 1. Pull latest from all GitHub repos (on Merlin machine)
```bash
for repo in ava merlin; do
  cd /Users/Merlin/app_creation/agents/$repo && git pull origin main 2>&1 | tail -2
done
cd /Users/Merlin/app_creation/agents/bpl_status && git pull origin main 2>&1 | tail -2
```

### 2. Push any local changes to GitHub (on Merlin machine)
```bash
for repo in ava merlin bpl_status; do
  cd /Users/Merlin/app_creation/agents/$repo
  if ! git diff --quiet || ! git diff --staged --quiet; then
    git add -A
    git commit -m "fleet-sync $(TZ='America/Los_Angeles' date '+%Y-%m-%d %H:%M PT')"
    git push origin main
    echo "$repo: pushed"
  else
    echo "$repo: up to date"
  fi
done
```

### 3. Sync SOUL.md from workspace to Hermes profiles (on Merlin machine)
```bash
for agent in ava merlin cache chip finn goob penny pulse rex viddie; do
  WORKSPACE="/Users/Merlin/app_creation/agents/$agent/SOUL.md"
  PROFILE="/Users/merlin/.hermes/profiles/$agent/SOUL.md"
  if [ -f "$WORKSPACE" ]; then
    cp "$WORKSPACE" "$PROFILE"
    echo "$agent SOUL.md synced"
  fi
done
```

### 4. Sync AGENT_OWNERSHIP.md to bpl_status (on Merlin machine)
```bash
cp /Users/Merlin/app_creation/agents/AGENT_OWNERSHIP.md /Users/Merlin/app_creation/agents/bpl_status/AGENT_OWNERSHIP.md
cp /Users/Merlin/app_creation/agents/PORT_REGISTRY.md /Users/Merlin/app_creation/agents/bpl_status/PORT_REGISTRY.md
```

### 5. Verify fleet status
```bash
launchctl list | grep hermes
```

## Expected output
Each step reports which repos were pushed or were already up to date. Final step shows all running gateways.

## Notes
- This skill is safe to run at any time — it only commits actual changes
- If a git push fails (auth error), check that Merlin's SSH key is still valid on GitHub
- SOUL.md sync (step 3) is one-way: workspace → Hermes profile. The workspace (and GitHub) is always the source of truth.
