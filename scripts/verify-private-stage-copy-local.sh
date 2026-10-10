#!/usr/bin/env bash
# Verify newly isolated stage V1 folder WITHOUT any account write or publish.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WORK="$ROOT/rive/last-performance-stage-v1"
OLD="$ROOT/rive/spike-01/scene.rml"
[[ -f "$WORK/scene.rml" && -f "$WORK/rive.yaml" && -f "$OLD" ]] || { echo "ISOLATION_BLOCKED: missing Rive copy inputs"; exit 2; }
cmp -s "$WORK/scene.rml" "$OLD" || { echo "ISOLATION_BLOCKED: source and copy differ; run independent regression first"; exit 3; }
python3 - "$WORK/rive.yaml" <<'PY'
import re,sys
raw=open(sys.argv[1],encoding="utf-8").read()
assert re.search(r"(?m)^\s*projectId:\s*1882813\s*$",raw),"Wrong personal project ID"
assert not re.search(r"(?m)^\s*fileId\s*:",raw),"Remote file already bound! First-copy guard should block"
assert "one-frame-late-stage-v1-workcopy" in raw,"Wrong workcopy name"
print("ISOLATION_CONFIRMED: independent project config, projectId 1882813 and no remote fileId")
PY
if ! command -v rive >/dev/null 2>&1 && [[ -x "$HOME/.rive/bin/rive" ]]; then export PATH="$HOME/.rive/bin:$PATH"; fi
command -v rive >/dev/null 2>&1 || { echo "RIVE_CLI_BLOCKED"; exit 2; }
cd "$WORK"
rive . --verify
rive inspect . --summary
mkdir -p build/copy-verify
rive . --screenshot=build/copy-verify/00-house.png --quiet --advance=1
rive . --screenshot=build/copy-verify/01-first-cue.png --quiet --advance=1 --pointer=click@150,315 --pointer=move@20,20 --advance=300ms
if cmp -s build/copy-verify/00-house.png build/copy-verify/01-first-cue.png; then
  echo "ISOLATION_BLOCKED: copied stage input did not change rendered frame"; exit 3
fi
echo "PRIVATE_STAGE_COPY_LOCAL_VERIFIED; no Rive push, no external write"
