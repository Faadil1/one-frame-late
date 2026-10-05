# Claude Code Codespace environment — 2026-10-05

## Observed

- Node: `v24.21.0`
- npm: `11.19.0`
- Claude Code: `2.1.289`
- `claude doctor`: no installation issues found
- Search: OK (bundled)
- Auto-updates: enabled

## Authentication

Claude Code is not yet signed in to claude.ai.

Doctor reported:
- no usable credentials for managed settings;
- Remote Control unavailable until sign-in;
- missing claude.ai subscription auth.

## npm install-script warning

npm reported that the Claude Code postinstall script was not yet covered by `allowScripts`.

Despite that warning:
- `claude --version` succeeds;
- `claude doctor` succeeds;
- doctor explicitly reports no installation issues.

Therefore no reinstall is required unless a later runtime failure proves otherwise.

## Current truth

- Claude Code installed: PROVEN
- Claude Code executable: PROVEN
- Claude Code doctor: PASS
- Claude authentication: BLOCKED
- Rive CLI 1.3.0: PROVEN
- Technical Reality behavior: ACTIVE / NOT YET PROVEN
