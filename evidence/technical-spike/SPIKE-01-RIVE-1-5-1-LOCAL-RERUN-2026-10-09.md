# Technical Reality Spike 01 — Codespace Rive CLI 1.5.1 rerun

Date (user-supplied session): **2026-10-09**  
Branch: `feat/technical-reality-spike-01`  
Exact inspected source commit: `f9120517785a211be34295e4983ccf8ac2d68ce6`  
Evidence level: **USER-PASTED LOCAL TERMINAL OUTPUT**; **not** a direct tool replay and **not** a hosted web or Rive Editor behavioral test.

## Observed output

- Current Codespace rebuilt; Rive CLI installed as **1.5.1**, all missing EGL/Wayland/X11 shared libraries installed; `ldd ... | grep "not found"` returned none and `rive --version` printed `rive 1.5.1`.
- `rive doctor` reports `ok version`, `ok update`, `ok live-link`. Warnings:
  - `auth Not logged in (prod)` — any future `push`, `--publish` or `--rev` must reauthenticate explicitly, protected public actions remain gated.
  - `project no rive.yaml in /workspaces/one-frame-late` — expected when `doctor` is run at repo root; project is `rive/spike-01`.
  - `android no adb`, `wamrc no wamrc` — optional workflows, no current spike dependency.
- `bash scripts/validate-spike-01-local.sh` reports correct branch and commit above; `rive . --verify`: **0 errors / 0 warnings**, CLI message `verified (0 bytes, 67ms)`. **0 bytes is a CLI progress field; do NOT claim exported .riv bytes or web bundle verified.**
- `rive inspect . --summary`: `"schema": 1`, `"problems": []`, **237 artboard objects** including 1 StateMachine, 2 StateMachineLayer, 7 AnimationState, 26 DataBindContext, 1 ViewModel with instance and typed properties. This is structural/local verification, not proof of interactive behavior in Editor/Web.
- Replay script returned exit 0 and printed the `LOCAL_GATE_DONE` marker. It ran the established screenshot captures; **frames were generated in the user's Codespace** but were *not transmitted here for independent image review*. The console repeatedly printed:
  `[egl] using EGL_PLATFORM_DEVICE_EXT (1 device)`
  `rive: no interlock mode supports this frame, drawing it in depthStencil with 4x MSAA`
  This is an EGL rendering fallback warning; no execution failure was observed. Visual correctness of each frame on desktop/mobile is still uninspected.
- Generated `evidence/technical-spike/spike-01-gate-2026-10-09/` appeared as untracked in the `git status` printed by the script. No claim that the raw logs were committed.

## Truthful verdict

`LOCAL_RIVE_1_5_1_CHECKS_PASSED` from user-provided output:
- CLI dependencies and toolchain: PROVEN at user session.
- File verification and resolved Rive object structure: PROVEN at LOCAL scope.
- Headless capture script execution: PROVEN as successful command completion; per-frame image content **not independently inspected**.
- Match to old Rive 1.3.0 behavior: **NOT fully demonstrated** from command exit alone; prior 1.3.0 frames were inspected in earlier evidence.
- Rive Editor interactive Play: BLOCKED pending manual observation of SYNC/DELAY/HOLD/RESET.
- Target host/browser Web runtime: BLOCKED.
- Uninstructed audience comprehension: not tested.
- Full role reversal and GPU Canvas: not yet implemented or proven.
- Current CLI prod auth: **NOT LOGGED IN** (earlier 1.3.0 authenticated session does not imply current 1.5.1 session remains authenticated).
- Concept Lock, BUILD_CANDIDATE, LIVE, SUBMISSION_READY, final publication: remain BLOCKED / FALSE.

## Exact next action

Open *existing* Rive Editor file `spike-01` (project **1882813**, file **2632594**) and run its interactive State Machine Play without uploading or publishing. Click the puppet body and observe moves 1–4 SYNC, moves 5–6 DELAY, move 7+ SHADOW_HOLD when lowering, reset and first follow-up click. Return a brief screen recording or explicit per-step observations, including failures.

When returning to Codespace:
```bash
git status --short
# If desired, inspect local replay PNGs at rive/spike-01/build/ev/
# Nothing else needs to be installed for Rive CLI validation.
```
Retain protected public publication and submission human checkpoint.
