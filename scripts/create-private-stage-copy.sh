#!/usr/bin/env bash
# Creates ONLY a new, non-public Rive Editor working file in the user's Personal Files.
# Does not update old file 2632594; never --publish; no social/Contra submission.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE="$ROOT/rive/spike-01/scene.rml"
COPY="$ROOT/rive/last-performance-stage-v1"
YAML="$COPY/rive.yaml"
OLD_ID=2632594
PERSONAL_PROJECT_ID=1882813
if [[ "${1:-}" != "--confirm-private-copy" || $# -ne 1 ]]; then
  echo "USAGE: bash scripts/create-private-stage-copy.sh --confirm-private-copy" >&2
  exit 2
fi
if ! command -v rive >/dev/null 2>&1 && [[ -x "$HOME/.rive/bin/rive" ]]; then
  export PATH="$HOME/.rive/bin:$PATH"
fi
command -v rive >/dev/null 2>&1 || { echo "BLOCKED: install official Rive CLI in this Codespace." >&2; exit 2; }
for f in "$SOURCE" "$COPY/scene.rml" "$YAML"; do
  [[ -f "$f" ]] || { echo "BLOCKED: missing $f" >&2; exit 2; }
done
if ! cmp -s "$SOURCE" "$COPY/scene.rml"; then
  echo "BLOCKED: working scene no longer matches the locally proven Stage V1 source. Revalidate before first remote push." >&2
  exit 2
fi
python3 - "$YAML" "$PERSONAL_PROJECT_ID" "$OLD_ID" <<'PY'
import re,sys
raw=open(sys.argv[1],encoding="utf-8").read()
pid=sys.argv[2]; old=sys.argv[3]
if re.search(r"(?m)^\s*fileId\s*:",raw):
    raise SystemExit("BLOCKED: fileId is already present. This script creates a new file ONCE only.")
if not re.search(rf"(?m)^\s*projectId\s*:\s*{pid}\s*$",raw):
    raise SystemExit("BLOCKED: Personal Files projectId is missing/wrong.")
if re.search(rf"(?m)^\s*fileId\s*:\s*{old}\s*$",raw):
    raise SystemExit("BLOCKED: protected original file ID detected.")
if "one-frame-late-stage-v1-workcopy" not in raw:
    raise SystemExit("BLOCKED: unexpected Rive working-copy name.")
print("SAFE_PUSH_TARGET: new independent file under Personal Files project",pid)
PY
echo "Source revision: $(git -C "$ROOT" rev-parse --short HEAD)"
echo "Rive CLI: $(rive --version)"
echo "Rive authentication check:"
rive doctor "$COPY"
echo "Writable projects available to THIS account (must include $PERSONAL_PROJECT_ID):"
available="$(rive push --list)"
printf '%s\n' "$available"
if ! grep -Eq "(^|[^[:digit:]])$PERSONAL_PROJECT_ID([^[:digit:]]|$)" <<< "$available"; then
  echo "BLOCKED: Personal Files projectId not listed as writable. Check Rive account/login." >&2
  exit 3
fi
cd "$COPY"
rive . --verify
rive inspect . --summary
echo "Creating ONE new private Editor file; no --publish, no upload of prior file $OLD_ID."
rive push --project="$PERSONAL_PROJECT_ID" --name="The Last Performance - Stage V1 private workcopy"
echo "Rive new-file identity after push:"
cat rive.yaml
python3 - "$YAML" "$OLD_ID" <<'PY'
import re,sys
raw=open(sys.argv[1],encoding="utf-8").read()
match=re.search(r"(?m)^\s*fileId\s*:\s*(\d+)\s*$",raw)
if not match:
    raise SystemExit("RESULT_UNKNOWN: Rive did not write fileId. Inspect CLI output; do not retry blindly.")
new=match.group(1)
if new == sys.argv[2]:
    raise SystemExit("BLOCKED: unexpected protected original file ID. STOP.")
print("NEW_PRIVATE_EDITOR_FILE_ID="+new)
PY
echo "IMPORTANT: git status shows new fileId. Do not commit IDs to wrong branch."
git -C "$ROOT" status --short
echo "CREATED_PRIVATE_EDITOR_COPY; not a public Hosted Link, not Web runtime proof."
