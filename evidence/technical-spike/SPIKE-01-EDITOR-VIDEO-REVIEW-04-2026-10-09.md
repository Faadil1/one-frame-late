# Technical Reality Spike 01 — fourth Rive Editor video, 2026-10-09

**Source:** user-uploaded private screen recording `20261009-2047-42.2499895.mp4` (**66.219 seconds**, 1910 × 1038, 30fps; 1984 video frames), inspected directly in container. The source video remains a private conversation attachment and was **not** posted, pushed to Rive, or committed to GitHub.

**Target in video:** https://editor.rive.app/file/spike-01/2632594 (existing Rive Editor file).  
**Evidence class:** `USER_EDITOR_INTERACTIVE_VIDEO` — Editor behavior only, **not** target web runtime, not live judge availability.

## Verification method

- Reviewed full-viewport contact sheets across 0–66s, and frames near the transition/handoff.
- Inspected exact Editor Play banner and the `Shadow Relationship` State Machine graph, including the `Shadow Hold (arm up)` node visibly active at ~47s.
- Separately sampled the puppet's red right arm and the shadow's dark right arm at 10fps using ROI/pixel state detection on the 1910×1038 source. The ranges below are video-visible apparent raised/down poses, subject to ~0.1s sampling uncertainty; **do not equate these intervals with underlying State Machine timer settings or exact click event timestamps**.

## Observed sequence

| Approximate time | Puppet right arm | Shadow right arm | Interpretation |
| --- | --- | --- | --- |
| 6.2–12.6s | UP | UP | First interactive synced pose |
| 12.7–14.9s | DOWN | DOWN | Return in sync |
| 15.0–24.0s | UP | UP | Repeat in sync |
| 24.1–37.9s | DOWN | DOWN | Repeat in sync |
| 38.0s | UP | DOWN | Brief delayed onset (approx one 0.1s sampled interval) |
| 38.1–39.6s | UP | UP | Followed up |
| 39.7–40.0s | DOWN | UP | Desynchronization in DELAY (~0.3s sampled before catch-up) |
| 40.1–43.9s | DOWN | DOWN | Shadow catches up |
| 44.0s | UP | DOWN | Brief delayed onset |
| 44.1–45.7s | UP | UP | Both raised before refusal |
| **45.8–47.2s** | **DOWN** | **UP** | **Strong sustained shadow refusal** (~1.4s captured at 10fps). At ~47s, `Shadow Hold (arm up)` State Machine node is highlighted. |
| 47.3–52.0s | DOWN | DOWN | Shadow eventually follows |
| **53.0–54.6s** | **DOWN** | **UP** | Second sustained refusal (~1.6s) |
| 54.7–55.5s | DOWN | DOWN | Catch-up |
| 55.6–56.0s | UP | DOWN | Visible rise-delay (~0.4s) |
| 56.1–57.2s | UP | UP | Catch-up |
| **57.3–58.8s** | **DOWN** | **UP** | Third sustained refusal (~1.5s) |
| 58.9–64s | DOWN | DOWN | Returns to resting configuration |
| Around 65s | Play leaves active scene | — | Stopping Editor preview is **not** RESET proof |

The precise offsets relative to the author's nominal `DELAY = 500 ms` and `SHADOW_HOLD = 2 s` were **not directly calibrated**: sampled scene-visible upper/lower silhouettes show ~0.3–0.4s brief divergences and ~1.4–1.6s HOLD. Rive layer transition interpolation (~150 ms), screen frame timing, video sampling and transitions may affect perceived duration. This is **not an exact timing pass**, although the qualitative delay and hold are clearly demonstrated.

## Verdict by gate

- State Machine Play active, pointer-driven puppet torso interaction: **PROVEN_EDITOR**.
- `SYNC` first four changes: **PROVEN_EDITOR_VISUAL**.
- `DELAY` following repeated input: **PROVEN_EDITOR_VISUAL_QUALITATIVE**; exact 500 ms **NOT MEASURED**.
- `SHADOW_HOLD` when puppet lowers: **PROVEN_EDITOR_VISUAL**; visible sustained 1.4–1.6 seconds, exact intended 2s **NOT MEASURED**.
- Shadow later returns DOWN: **PROVEN_EDITOR_VISUAL**.
- `RESET` button clicked **during State Machine Play and fresh SYNC after reset**: **NOT OBSERVED**. Earlier LOCAL/headless evidence still proves reset at LOCAL scope; do not inflate to Editor proof.
- Full Editor behavior gate: **BLOCKED pending reset end-to-end**.
- Target Web runtime: **BLOCKED**; no public playable URL verified.
- Uninstructed comprehension, Human Touch, GPU Canvas, final inversion (shadow pulls puppet), Concept Lock, Build Candidate, Submission: **not proven / blocked**.

## Interpretation and product consequence

The basic physical contract can be implemented natively in Rive Editor and **does not have a demonstrated click-listener defect**. The fourth clip is sufficient to stop asking the user to redo the eight-click cycle. The main implementation issue is now **experience design**: needing 8 toggles and long pauses before the memorable moment hurts judge-first-five-second comprehension. After runtime and short reset validation, shorten to a causally legible 2–3 interaction arc while preserving actual Rive-native state effects and recovery. Current art is still crude technical primitives, not challenge-ready handcrafted paper theatre.

## Exact next observation (one quick short clip)

While `Playing State Machine 1` is active **and the shadow has been in HOLD or the move counter is high**, click the small dark rectangular `Reset Button` below the characters; confirm both arms DOWN; click the orange puppet torso **once**; verify both arms rise immediately and in sync rather than getting stuck in the previous delay/hold regime. If no reset effect, inspect the existing `RESET` listener and View Model `puppetArmUp`/`moves` without inventing success.

Once Editor reset proven, begin the separately scoped **Rive target-Web runtime** proof with authenticated/supportable preview/publication path; final external public share and Contra submission remain human protected actions.

**No new product code, state promotions or public release justified by this video alone.**
