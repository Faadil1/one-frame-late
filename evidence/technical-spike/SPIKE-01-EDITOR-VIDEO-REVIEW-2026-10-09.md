# Rive Editor screen recording review — 2026-10-09

**Source:** user-submitted screen recording (`20261009-1953-18.7171094.mp4`), 39.98 s, 1912×1036, 30 fps. Recording is **not uploaded to the public repository**; this is an analysis of the user-provided local/private clip only.

**Related Rive Editor file:** `spike-01`, `editor.rive.app/file/spike-01/2632594` (file ID 2632594), already known authenticated file.  
**Evidence category:** USER-SUPPLIED EDITOR VIDEO / PARTIAL OBSERVATION — **NOT complete interactive sequence proof**, **NOT target web runtime**, **NOT an external judge run**.

## Exactly observed

1. The Rive Editor opens the intended spike-01 artboard with crude ochre puppet at left, dark shadow at right, and small reset rectangle below. The hierarchy and animation assets are visible.
2. Opening the individual animation assets produces visibly distinct **shadow arm DOWN and UP** poses. Around 3–8 s and 20–35 s the dark character's arm is raised; around 0–2, 10–18, 36–39 s it is lowered. These poses are usually displayed while individual animation tabs are selected or their timeline is scrubbed; they **do not establish an interactive State Machine transition**.
3. At approximately 15–18 s, the Editor displays the explicit blue `Playing State Machine 1` banner and an active State Machine transition graph. Thus **the Editor's interactive State Machine preview can be started**.
4. During that short preview interval, the ochre puppet arm does not visibly change pose; the video does not show an identifiable series of body taps/clicks associated with SYNC/DELAY/HOLD. It does not show any reset-and-repeat proving counter cleared. The later arm-up frames occur while single animation timelines are open.
5. No browser-hosted judge URL or independent mobile/touch tests appear.

## Verdict

- Authenticated Editor file opened and visual structure: **PROVEN** (previously; reinforced by video).
- Animation assets can show DOWN/UP poses: **OBSERVED**.
- State Machine interactive Play preview can be started: **PROVEN_FROM_VIDEO**.
- **Interactive puppet click listener fires / puppet and shadow move together:** **NOT_YET_OBSERVED**.
- 500ms DELAY and 2s HOLD triggered from actual view-model move counts: **NOT_YET_OBSERVED**.
- RESET and fresh SYNC after reset: **NOT_YET_OBSERVED**.
- Rive Editor end-to-end interactive behavioral gate: **BLOCKED** until tested.
- Web runtime / spectator comprehension / Concept Lock: **BLOCKED** unchanged.
- Need to distinguish absence of a demonstrated interaction from an implementation bug: **the video does not by itself prove the click listener is broken**.

## Targeted retest (1 minute, NO publish or push)

1. Open the existing file; click `State Machine 1` in the Animations sidebar, not individual `Puppet Arm Up`/`Shadow Arm Up` assets.
2. Start Play using the small triangle on the bottom-left side of the animation pane until the blue `Playing State Machine 1` banner appears.
3. While Play stays running, click/tap the CENTER OF THE OCHRE PUPPET BODY in the stage. The listener targets `Puppet Body`. After first click **both puppet's red arm and dark shadow's arm should change together**. If puppet does not move on first click, stop and report **EDITOR_INPUT_BLOCKED**; do not click eight more times or treat other animation tabs as a test.
4. If click 1 works, click body repeatedly once per ~0.8–1.2 s: 1–4 SYNC; 5–6 DELAY by ~500ms; 7 raise, **8 lower** while shadow remains raised for ~2s. Use screen recording including cursor.
5. With State Machine still in Play, click the small **dark square beneath the two characters** (Reset Button). First subsequent body click should be back in SYNC.
6. Record actual per-step observation, viewport and errors. If click 1 fails, check that Stage shows `Playing State Machine 1`, inspect Listener target `Puppet Body`, and whether the active ViewModel instance changes `moves`/`puppetArmUp`; correct input binding in a focused code test only after locating defect.

## Non-claims

Do not promote Editor behavior, target web runtime, concept lock or GPU Canvas based on this clip. Previous LOCAL Rive 1.3.0 headless frame sequence and the new CLI 1.5.1 successful replay-runner are independently classified and unchanged. No upload, push, publication, social post, or submission was performed in this review.
