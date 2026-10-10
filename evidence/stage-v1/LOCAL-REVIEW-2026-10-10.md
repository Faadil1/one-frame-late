# ONE FRAME LATE — The Last Performance stage V1 / local reality review

Date: **2026-10-10**  
Branch: `feat/paper-theatre-stage-v1` (child of `feat/technical-reality-spike-01`)  
PR: https://github.com/Faadil1/one-frame-late/pull/2 (DRAFT).  
Evidence class: **CI LOCAL RIVE 1.5.1 + inspected Rive-rendered PNGs** — **not Rive Editor updated, not Web, not new live artifact**.

## Artifact & proof

- Rive source: `rive/spike-01/scene.rml`, latest validated revision `5bff589feff6590b7b68d9562bc4ff2298fc32fd`.
- Official Rive CLI **1.5.1** on GitHub Actions: `rive . --verify` returns **0 errors / 0 warnings** and `rive inspect . --summary` returns `problems: []`.
- RML XML static audit: **598 unique IDs, 100 Shape elements, 3 StateMachineListenerSingle, 2 StateMachineLayer**, 1 ViewModel. Original 2 Rive layers and prior puppet-body / reset controls preserved.
- CI success: **[Rive Stage V1 Local Assurance — run 38090136053](https://github.com/Faadil1/one-frame-late/actions/runs/38090136053)**. Artifacts include `00-house.png`, `01-puppet-input.png`, `02-cue-bell-input.png`, `03-cue-then-puppet.png`.
- Inspected actual Rive PNGs from repaired workflow run 38090106799. **Initial scene** shows red paper curtains, lantern, crafted proscenium border, paper scrim, rope guides, two figures, eye/cheek details and brass stage cue bell. **Puppet click** raises both arms. **Bell click** also raises both arms; bell followed by puppet click returns both to initial pose. This shows *visual* control through the Rive state machine. Direct ViewModel.moves numerical inspection and manual Editor pointer target test remain pending.
- Static image comparison guard in `scripts/validate-stage-v1.sh` now fails the CI if input screenshots are identical to the initial stage; strengthened CI run 38090136053 passed.

## Observed regression and repair

First RML pass `174e764...` compiled cleanly but its first background rectangle covered the whole scene in Rive's painter ordering. All 4 frames were identical dark screenshots — **visual failure despite successful structural verification**. A focused repair reordered background vectors behind characters and moved facial details ahead of heads (`5a29ea9...`), then repeated Rive verification and inspected images; **PASS in LOCAL RENDER**. This failure is a permanent visual regression case (static frame divergence guard) and should not be concealed.

## Truth boundary

PROVEN at LOCAL Rive render:
- RML scene compiles with 1.5.1 after repair;
- house scenery now visible and composition roughly aligned in 500×500 artboard;
- puppet input moves both arms; stage cue bell input also does, with second input returning pose;
- no compiler problems and screenshot captures saved.

NOT PROVEN:
- New stage/cue bell manually in Rive Editor (only previous crude prototype was Editor-proven);
- updated RML persisted to the external Rive file 2632594 (no `rive push` performed, no authorization assumed);
- latest scene in signed/public target browser URL or touch controls;
- bespoke human Rive Editor art edits, timing, professional art/material polish, responsive scaling;
- complete puppet character expression rig, secondary play/goal/stakes, genuine autonomous shadow-to-puppet reverse-control, two endings or sound;
- Concept Lock, submission-ready, LIVE or submitted.

## Exact next engineering gates

1. **Local visual review accepted at proof-of-scene level**; next inspect click target and animation in Rive Editor. Do not call the current flat art challenge-quality Human Touch.
2. Keep old Rive editor file as a proved reference. An upload/update to existing file 2632594 could replace earlier proven prototype; require a deliberate controlled checkpoint and authenticated Rive CLI first.
3. Revise progression from 8 mechanical toggles to a short causally meaningful stage-operating arc, with real shadow reversal and two distinct endings, then integrate expressive paper rig, cues, responsive material/light and accessibility.
4. Verify exact updated Web runtime after legitimate publishing/sharing approval and run uninstructed comprehension before any Concept Lock.

**No public action or external identity action performed.**
