# Technical Reality Spike 01 — fifth Editor clip / RESET and fresh SYNC

- **Date:** 2026-10-09 (user local)
- **Source:** user-uploaded `20261009-2155-52.2725498.mp4`, **36.7s**, 1916×1032 / 30 fps (private user attachment, video **not published or committed**).
- **Editor file:** existing `spike-01` ID 2632594 in user's Rive account.
- **Evidence class:** USER_SUPPLIED_EDITOR_INTERACTIVE_VIDEO (not target web runtime, no anonymous viewer proof).
- **Source implementation:** prior pushed Rive file 2632594 (revision recorded separately as 48006216); this recording is not a new binary artifact.

## Directly observed

- The blue `Playing State Machine 1` banner remains visible for the demonstration. Artboard and State Machine transitions are active, without switching to isolated animation timelines.
- Both arms are moving through synchronized and delayed configurations. At approximately **9.93–11.23s**, puppet arm is down while shadow remains up and then catches up (HOLD), with cursor moved over the dark RESET rectangle.
- The cursor remains over the **RESET button** during the subsequent restoration, then moves toward the puppet's orange torso.
- Around **14.733s**, both puppet and shadow arms raise at the same captured 30fps interval, followed by synchronized lowering around **17.033s**. Further synchronized rises/lowers around 18.167s and 19.1s.
- Further interactions restart delayed onset around **20.033–20.267s** (puppet up, shadow down), **21.167–21.667s** (puppet down, shadow up), and **22.300–22.800s** (puppet up, shadow down), followed by sustained shadow hold after **25.367s** (shadow catches up at ~27.200s).
- Again, the pointer is positioned over the same dark RESET rectangle at ~28.5s, with both arms down; after pausing, first movement **33.9s** has puppet+shadow UP simultaneously, next lowering **35.633s** has both DOWN simultaneously. `Playing State Machine 1` remains active throughout.
- Sequence of changes classified by one 30fps frame of sampled arm-pose regions: `3.333 UU`, `3.667 DD`, `4.933 UU`, `5.733 DD`, `6.267 UD`, `6.733 UU`, `7.200 DU`, `7.667 DD`, `9.233 UD`, `9.300 UU`, `9.933 DU`, `11.233 DD`, `14.733 UU`, `17.033 DD`, `18.167 UU`, `19.100 DD`, `20.033 UD`, `20.267 UU`, `21.167 DU`, `21.667 DD`, `22.300 UD`, `22.800 UU`, `23.600 DU`, `24.133 UU`, `25.367 DU`, `27.200 DD`, `33.900 UU`, `35.633 DD`. `U` = arm raised; `D` = arm down; first character puppet, second shadow. These are screenshot-derived state observations, **not direct Rive property logs**.

## Reasoned causal interpretation, evidence boundary

The **visible pointer on RESET, restoration, subsequent immediate synced first interactions, re-emergence of delay as actions accumulate, and repeated reset-to-sync pattern** establish an in-Editor behavior **consistent with functional reset/recovery**. The previous CLI deterministic data dump locally showed `moves=0`, but this video does **not directly expose or read** `moves` values, nor does it isolate individual mouse-down signals. We therefore mark the **behavioral RESET + fresh sync as PROVEN_EDITOR_VISUAL**, not `ViewModel.moves=0` freshly introspected. A separate View Model state inspection would be necessary to claim editor-level direct memory reset proof.

**The user has now supplied five clips. The user need not repeat the eight-click procedure; the Editor State Machine gate is passed for intended qualitative visible behavior.**

## Gate verdict

| Check | Verdict |
| --- | --- |
| Editor interaction enters State Machine Play | PROVEN |
| Puppet body click → Puppet+Shadow response | PROVEN |
| SYNC 1–4 | PROVEN_EDITOR_VISUAL |
| DELAY | PROVEN_EDITOR_VISUAL_QUALITATIVE |
| SHADOW_HOLD | PROVEN_EDITOR_VISUAL_QUALITATIVE |
| RESET → return to SYNCHRONIZED behavior | **PROVEN_EDITOR_VISUAL** |
| Exact programmed 500ms and 2s stage-visible timings | NOT_CALIBRATED |
| `moves=0` direct Editor View Model reading | NOT_DIRECTLY_OBSERVED |
| Signed/hosted Rive target web runtime | BLOCKED / NOT_PROVEN |
| First-five-second uninstructed comprehension | NOT_TESTED |
| Hand-authored artistic refinement / real full product depth | NOT_IMPLEMENTED in technical spike |
| GPU Canvas WGSL | NOT_IMPLEMENTED |
| Concept Lock, Build Candidate, Live, Submission | BLOCKED / FALSE / NOT_STARTED |

## Next gate

No more repeated local/Editor proof videos needed; **advance to the separate supported target web/runtime path** using official Rive product capabilities and explicit human checkpoint before any public link or user-identity submission. Preserve `spike-01` external file. Once real browser behavior is verified, conduct a small cold comprehension test, shorten the 8-toggle interaction design to 2–3 meaningful gestures, and pursue real hand-authored paper rig and live GPU effects conditionally. Do not conflate successful Editor proof with a judged, public playable artifact.
