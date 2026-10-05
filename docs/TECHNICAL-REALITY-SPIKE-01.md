# Technical Reality Spike 01

Status: **ACTIVE**

## Purpose

Falsify or prove the minimum behavioral premise before Concept Lock.

## Scope

Build only:

- one neutral artboard;
- one very simple puppet body/arm;
- one visually distinct shadow copy;
- one interaction;
- real Rive State Machine + View Model/Data Binding behavior.

Do not add GPU Canvas yet.

## Required sequence

### S1 — SYNC

Puppet and shadow move together.

### S2 — DELAY

After repeated valid interaction, the shadow performs the same motion with a clearly intentional small phase delay.

### S3 — SHADOW HOLD

The puppet returns to its base/down pose while the shadow visibly remains in the prior/up pose for a beat.

### S4 — RESET

A deterministic recovery action restores the initial relationship and clears the divergence state.

## Pass condition

A viewer can perceive without architecture explanation:

> The puppet moved back, but the shadow did not.

The behavior must be verified in the actual Rive toolchain and target web runtime.

## Fail conditions

Fail or BLOCK the direction if:

- DELAY reads only as accidental lag;
- HOLD cannot be made deterministic;
- behavior depends on generic JavaScript animation outside the Rive product core;
- reset is fake or only reloads a prerecorded state;
- the target runtime differs materially from the local preview;
- Rive-native implementation is too fragile for the deadline.

## Evidence to commit

- final `scene.rml` and generated project files appropriate to version;
- Rive CLI version;
- `rive ... --verify` output;
- `rive inspect ... --summary` / JSON output;
- screenshot or short local evidence where useful;
- target web-runtime evidence;
- exact commit SHA;
- concise truth-boundary note.

## Deferred

- final art;
- final sound;
- GPU light transport;
- literal frame-buffer latch;
- scorch/paper shaders;
- submission media;
- additional character;
- final naming.

## Next gate

If PASS: move to Concept Lock review, then GPU/visual-depth spike.

If FAIL: record the failure and either repair within bounded effort or reopen direction selection.
