# Agent instructions — ONE FRAME LATE

Before any material code, design, demo, documentation, packaging, or submission change:

1. Read `state/CURRENT.yaml`.
2. Read `state/HANDOVER.yaml`.
3. Read `state/PROJECT-RECONCILIATION.yaml`.
4. Read `product/PRD.md`.
5. Read `product/GATEWAY-REGISTRY.yaml`.
6. Read `product/CONCEPT-DECISION.md`.
7. Preserve GitHub + CURRENT/HANDOVER as source of truth.
8. Do not infer state from chat, README, an old demo, or intent.
9. Do not silently omit a registered gate; use ACTIVE, N/A, BLOCKED, or PROVEN.
10. Preserve Truth Boundary: OBSERVED / INFERRED / UNKNOWN.
11. Preserve Evidence Integrity: LIVE / LOCAL / LOCAL_STUB / PRESEEDED / SIMULATED / PARTIAL / NOT_IMPLEMENTED.

## Current authorized workstream

`TECHNICAL_REALITY_SPIKE_01` only.

Do not add final art, submission media, extra characters, fog, CRT, generic glitch effects, or packaging until the spike proves the behavioral core.

When Rive CLI creates project-local agent guidance under `rive/spike-01/`, read and follow it. Do not guess RML types or properties; use the installed Rive CLI documentation/schema commands.

## Spike pass condition

A viewer must perceive:

> The puppet moved back, but the shadow did not.

Required sequence:

`SYNC -> DELAY -> SHADOW_HOLD -> RESET`.

If the behavior cannot be implemented cleanly in Rive and verified in the target runtime, report BLOCKED/FAILED truthfully. Do not hide failure with story or polish.
