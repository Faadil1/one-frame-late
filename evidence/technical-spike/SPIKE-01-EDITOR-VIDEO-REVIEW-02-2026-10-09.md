# ONE FRAME LATE — Editor video review 02 (2026-10-09)

**Evidence class:** USER-PROVIDED EDITOR VIDEO / PARTIAL (NOT Web, NOT full interaction).  
**Source:** second user-uploaded video `20261009-2007-00.0303526.mp4` (private attachment; the video itself is NOT committed or published).  
**Media:** 1906 × 1038 px, 30fps, 1009 frames, 33.633s.  
**Rive Editor target observed:** `https://editor.rive.app/file/spike-01/2632594`; existing Faadil project, no public runtime.

## Confirmed visually

- `State Machine 1` is selected in Animations.
- The **blue `Playing State Machine 1` banner** appears and remains on screen for a sustained interval (approximately 15s–27s).
- The State Machine graph is visible, with `Puppet Pose` / `Shadow Relationship` panels and highlighted state nodes.
- During the sustained playing segment, both the ochre puppet's red arm and the dark shadow's right arm remain DOWN in the captured stage. Visual sampling of the puppet/shadow region over this interval shows no significant character pose changes.
- Cursor appears interacting with / hovering over lower State Machine graph regions at sampled times; no clear click on the **orange Puppet Body** is identifiable. Therefore, the absence of stage animation in this video does **not** establish a broken listener.
- The video does not show an 8-action puppet-body click sequence, the half-second delay, 2-second HOLD, or Reset after a successful interaction.
- No target browser-hosted runtime is shown.

## Actual verdict

Editor State Machine preview **PROVEN_CAN_ENTER_PLAY_MODE**.  
Editor State Machine end-to-end interactive behavior **BLOCKED (NOT DEMONSTRATED)**.  
`first_body_click_listener` **UNKNOWN**, not FAILED.  
SYNC→DELAY→HOLD→RESET in Editor **NOT_PROVEN**.  
Target hosted Rive Web / public judge access / comprehension / full Product Depth / Concept Lock **BLOCKED**.

The CLI 1.3.0 local evidence and CLI 1.5.1 local verify/inspect/replay script remain exactly as previously classified and are **not weakened or promoted** by this clip.

## Focused one-click retest (no push, no publish)

1. Open **existing** file ID 2632594. Select Animations → **State Machine 1**.
2. Start Play; visually confirm blue **Playing State Machine 1** banner, and keep it active.
3. **Move the mouse over the center of the OCHRE/ORANGE RECTANGLE that forms the left puppet's torso, not the lower State Machine graph.** In the 1906×1038 recording, the target was approximately at screen (728,416) while the Editor was at the shown zoom. Coordinates only for this recorded layout; rely on the visible torso after any resizing.
4. **Click once**. Expected: orange puppet's right red arm raises and dark shadow right arm raises in sync. Watch 1s. Record the cursor and artboard continuously.
5. If both arms react: continue clicks 2–4 sync, 5–6 delay, click 7 up and 8 down/HOLD, reset square and first re-click sync.
6. If click 1 causes **no puppet movement** while the blue banner remains: stop and report `EDITOR_INPUT_REPRO_BLOCKED`. Compare Listener `Toggle puppet arm` target with `Puppet Body` component and inspect View Model properties `puppetArmUp` and `moves` in Editor. Only then make focused Rive code correction, with local regression tests.
7. Avoid creating/changing a second file, publishing or signing a web artifact until authorized.

## Further evidence requested

A 5–10 second crop/screencast covering the blue Play banner, mouse moving **onto orange torso**, a single actual click and the resulting first arm positions is sufficient to discriminate missing click gesture from possible listener failure. The current video does not supply that.
