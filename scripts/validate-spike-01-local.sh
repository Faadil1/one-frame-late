#!/usr/bin/env bash
# ONE FRAME LATE — local Rive gate (NO push/publish, NO web sharing).
# Run: bash scripts/validate-spike-01-local.sh
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SPIKE="$ROOT/rive/spike-01"
OUT="$ROOT/evidence/technical-spike/spike-01-gate-2026-10-09"
RIVE="$(command -v rive || true)"
if [[ -z "$RIVE" && -x "$HOME/.rive/bin/rive" ]]; then
  RIVE="$HOME/.rive/bin/rive"
fi
if [[ -z "$RIVE" || ! -x "$RIVE" ]]; then
  echo "BLOCKED: Rive CLI unavailable. Expected PATH or ~/.rive/bin/rive." >&2
  exit 2
fi
if [[ ! -f "$SPIKE/scene.rml" || ! -f "$SPIKE/rive.yaml" ]]; then
  echo "BLOCKED: missing Rive spike project." >&2
  exit 2
fi
mkdir -p "$OUT"
cd "$ROOT"
git rev-parse HEAD | tee "$OUT/commit.txt"
git branch --show-current | tee "$OUT/branch.txt"
git status --short | tee "$OUT/git-status-before.txt"
"$RIVE" --version | tee "$OUT/rive-version.txt"
cd "$SPIKE"
"$RIVE" . --verify 2>&1 | tee "$OUT/verify.txt"
"$RIVE" inspect . --summary 2>&1 | tee "$OUT/inspect-summary.txt"
# Replay the established 13-step Rive CLI headless capture script.
bash "$ROOT/evidence/technical-spike/spike-01-local/capture.sh" 2>&1 | tee "$OUT/capture-console.txt"
cat <<'EOF' | tee "$OUT/RESULT-TEMPLATE.md"
# Gate 01 — Result
Evidence class: LOCAL only; never LIVE.
- Commit/branch: see commit.txt and branch.txt
- CLI, verify, inspect: see local logs.
- Frames: rive/spike-01/build/ev/
- Editor interactive playback: UNKNOWN until manually observed
- Target browser/Web runtime: UNKNOWN until tested
- Uninstructed comprehension: UNKNOWN
- GPU Canvas: NOT_IMPLEMENTED in this spike
- New role-reversal: NOT_IMPLEMENTED
- Concept Lock: BLOCKED
EOF
echo "LOCAL_GATE_DONE — next manual Editor verification: docs/GATE-ONE-FRAME-LATE-2026-10-09.md"
