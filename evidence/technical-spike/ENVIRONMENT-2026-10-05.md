# Technical Reality environment evidence — 2026-10-05

## Repository / branch

Repository checkout and branch activation succeeded:

`feat/technical-reality-spike-01`

## Rive CLI install

The official installer completed successfully:

```
Downloading rive 1.3.0 (linux-x64)
Installed rive 1.3.0 to /home/codespace/.rive/bin/rive
Version cache: /home/codespace/.rive/versions/1.3.0/rive
```

The installer also stated that Linux watch mode needs `libEGL`, `libGLESv2`, and `libX11` at runtime.

## Observed blocker

Both `rive --version` and `rive doctor` currently fail before CLI execution:

```
rive: error while loading shared libraries: libEGL.so.1: cannot open shared object file: No such file or directory
```

## Truth status

- Repository access: PROVEN
- Work branch checkout: PROVEN
- Rive CLI binary installed: PROVEN
- Installed CLI version from installer: 1.3.0
- CLI executable runtime: BLOCKED
- Immediate blocker: missing `libEGL.so.1`
- Technical Reality behavior: NOT YET TESTED

## Exact next action

Install the required Linux graphics runtime libraries in the Codespace, verify shared-library resolution, then run `rive --version` and `rive doctor`. Only after the CLI actually starts may Spike 01 proceed.


## Dependency refinement

After installing the first Linux graphics runtime packages, `ldd` reports only:

```
libwayland-egl.so.1 => not found
libxkbcommon.so.0 => not found
```

`rive --version` and `rive doctor` now fail specifically on `libwayland-egl.so.1`.

Ubuntu package mapping verified:
- `libwayland-egl.so.1` -> `libwayland-egl1`
- `libxkbcommon.so.0` -> `libxkbcommon0`

The environment blocker remains active until both are resolved and the CLI actually starts.
