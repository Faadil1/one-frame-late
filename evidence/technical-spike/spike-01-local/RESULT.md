# Technical Reality Spike 01 — local result (Rive CLI 1.3.0)

Evidence class: **LOCAL** (headless Rive CLI renderer). **Web runtime: NOT_PROVEN / UNKNOWN.**
No `rive push`, no publish. Branch `feat/technical-reality-spike-01`.

| Frame | Meaning |
|---|---|
| 00-sync-mid-140ms | SYNC: mid-transition arm angles of puppet and shadow identical |
| 01 / 02 | SYNC up / down |
| 03 vs 04 | DELAY: 100ms after click puppet arm is rising, shadow still down; 700ms both up |
| 05 vs 06 | DELAY on lowering |
| 08 / 09 | SHADOW_HOLD: puppet DOWN, shadow UP at +300ms and +1500ms (byte-identical frames) |
| 10 | shadow finally lowers after 2s hold |
| 11 | RESET from HOLD: both down; `--data-dump` shows puppetArmUp=false, moves=0 |
| 13 | after RESET, next raise is SYNC again (identical to frame 01 at +300ms) |

Sequence by `moves` (valid puppet pose changes): 1-4 SYNC, 5-6 DELAY (500ms), >=7 SHADOW_HOLD (2s).
Limits: thresholds/timings are untuned; shadow in HOLD eventually follows (no permanent disagreement);
perception ("reads as intentional, not lag") has NOT been tested on any human viewer.
