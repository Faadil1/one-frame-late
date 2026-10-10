#!/usr/bin/env bash
# ONE FRAME LATE / The Last Performance: LOCAL only. Does not push, publish or submit.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PROJECT="$ROOT/rive/spike-01"
if ! command -v rive >/dev/null 2>&1 && [[ -x "$HOME/.rive/bin/rive" ]]; then export PATH="$HOME/.rive/bin:$PATH"; fi
if ! command -v rive >/dev/null 2>&1; then echo 'BLOCKED: Rive CLI unavailable.' >&2; exit 2; fi
echo "=== Source ==="
git -C "$ROOT" rev-parse HEAD
git -C "$ROOT" branch --show-current
rive --version

echo "=== XML and identity ==="
python3 - "$PROJECT/scene.rml" <<'PY'
import sys, xml.etree.ElementTree as ET
root = ET.parse(sys.argv[1]).getroot()
items = list(root.iter())
ids = [x.attrib["id"] for x in items if "id" in x.attrib]
assert len(ids) == len(set(ids)), "Duplicate Rive IDs"
assert len(root.findall(".//StateMachineListenerSingle")) >= 3, "Lost cue bell/puppet/reset listener"
assert len(root.findall(".//StateMachineLayer")) == 2, "Unexpected state machine layer mutation"
assert len(root.findall(".//ViewModel")) == 1, "ViewModel missing"
assert any(x.attrib.get("name") == "Stage Cue Bell" for x in items), "Cue bell absent"
assert any(x.attrib.get("name") == "Vellum Scrim" for x in items), "Stage absent"
assert any(x.attrib.get("name") == "Reset Button" for x in items), "Reset removed"
print("XML_VALID; unique IDs =", len(ids), "; Shapes =", len(root.findall(".//Shape")),
      "; Listeners =", len(root.findall(".//StateMachineListenerSingle")))
PY

cd "$PROJECT"
echo "=== Native Rive CLI ==="
rive . --verify
rive inspect . --summary
mkdir -p build/stage-v1
rive . --screenshot=build/stage-v1/00-house.png --quiet --advance=1
rive . --screenshot=build/stage-v1/01-puppet-input.png --quiet --advance=1 --pointer=click@150,315 --pointer=move@20,20 --advance=300ms
rive . --screenshot=build/stage-v1/02-cue-bell-input.png --quiet --advance=1 --pointer=click@452,418 --pointer=move@20,20 --advance=300ms
rive . --screenshot=build/stage-v1/03-cue-then-puppet.png --quiet --advance=1 --pointer=click@452,418 --pointer=move@20,20 --advance=700ms --pointer=click@150,315 --pointer=move@20,20 --advance=300ms
# Protect against RML render layers accidentally covering all puppets.
# A clean compiler does not imply the stage remains visible or responds to input.
if cmp -s build/stage-v1/00-house.png build/stage-v1/01-puppet-input.png; then
  echo "VISUAL_BLOCKED: scene unchanged after puppet click (black overlay / event / staging defect)." >&2
  exit 3
fi
if cmp -s build/stage-v1/00-house.png build/stage-v1/02-cue-bell-input.png; then
  echo "VISUAL_BLOCKED: scene unchanged after stage cue click (listener or occlusion defect)." >&2
  exit 3
fi
echo "LOCAL_STAGE_V1_VERIFY_DONE. Frame files differ after both actions; inspect images for correctness, then test Editor/Web."
