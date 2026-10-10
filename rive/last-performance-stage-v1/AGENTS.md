# Rive Editor private working copy — hard safety boundary

Current source scene: `rive/last-performance-stage-v1/scene.rml`.
This RML is copied from `../spike-01/scene.rml` at 2026-10-10 Stage V1, NOT from the old Rive Editor file.

**NEVER use the original Editor file ID 2632594 as this working copy's `push.fileId`.** The YAML deliberately contains only `push.projectId: 1882813` (Faadil / Personal Files), with no `fileId`. A first authenticated `rive push` creates an independent file and then writes its own new `fileId`. Stop if the CLI proposes the old file or a Shared Project.

Only Rive CLI 1.5.1 schema/docs are authority for types/properties. Before each changed RML run `rive . --verify`, `rive inspect . --summary`, and inspect rendered frames and Editor real input. A successful local build does NOT make a publish/link or challenge submission. Do not run `rive push --publish` nor `rive . --publish`. User authorized creation of a **non-public, independent working copy** on 2026-10-10; no public share, social or Contra submission was authorized.

Initial private creation procedure is `bash scripts/create-private-stage-copy.sh --confirm-private-copy` from repo root; it verifies project, account and source, then calls `rive push --project=1882813` exactly once only after human login on THEIR Codespace. This assistant environment cannot sign into Rive. After first success, the script blocks a second call if a remote fileId exists. Later editing requires deliberate review and direct version-aware Rive pushes, not this first-creation script.

Preserve the established `spike-01` file and its complete earlier Editor proof.
