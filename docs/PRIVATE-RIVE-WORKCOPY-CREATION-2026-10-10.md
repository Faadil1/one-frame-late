# ONE FRAME LATE — Create independent private Rive Editor workcopy (2026-10-10)

**Status:** PREPARED IN GITHUB, NOT YET CREATED ON RIVE.  
**Human authorization:** user agreed to preparing a separate private work copy on 2026-10-10. This does NOT authorize a public Share Link, `--publish`, a paid plan change, a social post or Contra submission.  
**Original immutable reference:** Faadil / Personal Files Rive file `2632594` `spike-01`, historical Editor behavioral gate proven. DO NOT OVERWRITE.  
**New workcopy project directory:** `rive/last-performance-stage-v1`, `rive.yaml` has `push.projectId: 1882813`, and intentionally no `fileId`.

## Verified Rive CLI first-push behavior

Official docs: https://rive.app/docs/cli/reference/project-config — on first `rive push`, the CLI creates a new file in the chosen writable Rive project and saves its remote `fileId` back to that **project directory's** `rive.yaml`. The `--project=1882813` option prevents an accidental choice of Shared Project. A push to a bound `fileId` would OVERWRITE remote content, so our one-time script refuses if `fileId` already exists. No public publish flag is used. This is a private Editor workcopy, **not** a hosted Rive Share Link or browser proof.

## One controlled Codespace execution

Open https://github.com/Faadil1/one-frame-late and its existing Codespace, then from repository root:

```bash
git fetch origin
git switch feat/paper-theatre-stage-v1 || git switch --track origin/feat/paper-theatre-stage-v1
git pull --ff-only
export PATH="$HOME/.rive/bin:$PATH"

# Only if 'rive doctor' says NOT LOGGED IN:
rive login
rive doctor

# One-time safe private Rive file creation, NOT public publication:
bash scripts/create-private-stage-copy.sh --confirm-private-copy
```

If `rive login` requires browser authentication, complete it only on the Rive website (do not paste access tokens/secrets into chat). If the script reports account not writable, **STOP** and send the output (without credentials). If the script reports `NEW_PRIVATE_EDITOR_FILE_ID=<new id>`, check new ID differs from `2632594` and report it. Do not run the script again after successful creation; next steps are Rive Editor interactive play/review and protected browser publication.

If you have uncommitted local work in the Codespace, preserve it and avoid an unsafe branch switch. The prior verified technical spike is on `feat/technical-reality-spike-01`; all new theater changes are only on `feat/paper-theatre-stage-v1`.

## GitHub/nonpublishing validation

GitHub Actions `Rive Stage V1 Local Assurance` runs:
- parent Stage V1 verify/inspect and nine local frames;
- isolated workcopy RML equality, personal-project ID and absence of fileId;
- separate workcopy's own `rive . --verify`, `rive inspect . --summary`, initial vs first input screenshot difference.

This does **not** test Rive Editor account upload nor Web. The script that creates the private remote Rive file is **not called by GitHub Actions**.

## Post-create Editor checklist

1. Open newly created file in **Faadil / Personal Files** and confirm its name `one-frame-late-stage-v1-workcopy`. Open original file only to compare, not to edit or push.
2. Select `State Machine 1` → Play; click marionette torso (first both UP), click again twice (delayed follow), click a fourth time (puppet DOWN, shadow UP then autonomous puppet UP without click), then RESET; bell click should use same internal progression.
3. Inspect paper stage readability, hit areas for bell/reset and character face geometry. Record short 20–30 second screen capture; annotate actual observation.
4. Edit original handcrafted art in new Rive file only. Do not publish public link without a separate user checkpoint.
5. Update only NEW `rive.yaml` with generated fileId after successful push; commit via feature branch after reviewing the diff and preserving original `rive/spike-01/rive.yaml`.

## Truth and constraints

- Source and local CLI: **PROVEN** once CI green.
- Private Editor file creation: **NOT YET PROVEN** until `rive push` and new ID observed.
- Editor interactive new scene: **NOT YET PROVEN**.
- Hosted Web runtime, cold user, quality, outcomes, final contest: **BLOCKED**.
- There is no accessible connected Rive-account action inside this ChatGPT session. The user's browser session or authenticated Codespace must execute the one-time push.
