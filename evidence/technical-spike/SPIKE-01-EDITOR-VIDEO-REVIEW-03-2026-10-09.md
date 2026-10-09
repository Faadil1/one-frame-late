# Rive Editor interactive screen recording — third clip — 2026-10-09

**User-provided source:** `20261009-2039-23.9752239.mp4`, 1918 × 1036, 30 fps, 270 frames (9.00 sec); private file, **not committed**.  
**Rive Editor URL visible:** `https://editor.rive.app/file/spike-01/2632594` (existing first-project file).  
**Evidence class:** `EDITOR_USER_VIDEO / PARTIAL_INTERACTIVE_OBSERVATION`; neither target web nor published judge runtime.

## Visual inspection (recording frames)

- `Playing State Machine 1` banner stays active. The graph shows the Shadow Relationship layer, with a visible active transition between `Shadow Arm Down` and `Shadow Arm Up` states.
- At approximately 3.6–3.8 seconds, a mouse pointer is visibly positioned on the **ochre/orange left puppet torso** while Play is active.
- Before interaction (2.8–3.8 s), both puppets' right arms are down.
- At approximately 4.0 s, **both** puppet orange/red arm and right shadow arm are in a raised intermediate pose, in sync.
- At approximately 4.2–4.8 s, **both arms** are raised, with visibly corresponding orientations.
- At approximately 5.2–5.6 s, both arms are back down; the return is consistent with a second valid action (individual mouse down events are not resolved frame-perfectly from a screen capture).
- These observations **prove one interactive rising event visibly in Editor Play**, and support that input mapping and Rive State Machine core work; they do **not** isolate a measured latency or independently verify the View Model counter values.
- No stage event at move 5–6 (500 ms DELAY) nor move 7 up / move 8 down (~2 seconds SHADOW_HOLD) is demonstrated; the clip is too short and does not show a complete eight-action series.
- No clicking the rectangular RESET button with resulting deterministic reset is shown.

## Verdict and gates

**PROVEN at Editor partial scope:** State Machine Play with pointer on puppet body elicits matching puppet/shadow arm rise; arms subsequently return to down. This resolves the previous uncertainty that the first body click was not demonstrated. Editor State Machine input path is **NOT BROKEN by this observation**.

**Still NOT PROVEN:** complete `SYNC (1–4) → DELAY (5–6) → SHADOW_HOLD (8 down) → RESET` as a connected user-triggered in-Editor run; signed/published Rive Web runtime, user understanding, final art, shadow-takes-string inversion and GPU Canvas.

**Preserved classification:** `rive_editor_behavior` overall **BLOCKED** until the full intended sequence is seen; incremental first-click input evidence **PROVEN_PARTIAL**. `concept_lock=BLOCKED`, `live=false`, `submission_state=NOT_STARTED`.

## Exact next test

1. Stay on existing Rive Editor file 2632594 and in `Playing State Machine 1`; do not scrub single animation timelines or re-open the file during a test run.
2. Click orange/ochre puppet **torso** 8 times in sequence, approximately every 0.8–1.2 seconds (wait >0.7s after click 5 and 6); one smooth uninterrupted recording with cursor/stage and blue Play banner visible.
3. Clicks 1–4: both arms move in SYNC (up / down / up / down).
4. Clicks 5–6: puppet moves first, shadow follows after ~500ms; avoid collapsing pause into next click.
5. Click 7: both end raised after delay; click 8: puppet lowers, **shadow remains raised for ~2s** then follows.
6. While still playing, click the small dark rectangular RESET below and then once more on puppet torso: arms return down, follow-up first click immediately SYNC.
7. If a step fails, report the first failing click, screen recording and View Model state (if available) instead of claiming success.

Do not publish, push to Rive or proceed to final art just because first interactive event passed. This is meaningful **partial behavioral proof**, not live core loop or complete product.
