# Stage V1 four-action autonomous reversal and reset — LOCAL Rive reality proof

Date: 2026-10-10  
Project ONE FRAME LATE / The Last Performance  
Status: **Rive CLI 1.5.1 LOCAL PROVEN, EDITOR UPDATED NOT TESTED, WEB NOT TESTED**  
Source implementation tested: `04eb03f553b26f9c6f32ba5542fea0e4bd119d6a`  
CI evidence: [Rive Stage V1 Local Assurance — 38090704716](https://github.com/Faadil1/one-frame-late/actions/runs/38090704716) (completed SUCCESS); downloadable artifact `rive-stage-v1-local`, nine Rive PNGs.  
Draft PR: https://github.com/Faadil1/one-frame-late/pull/2

## Tested actual code

- `rive/spike-01/scene.rml`: existing puppet-body and RESET listener IDs preserved, added a true stage cue bell event writing the same ViewModel `puppetArmUp` and `moves`.
- Replaced prior eight-toggle interaction thresholds by **FOUR-ACT contract / delay / refusal / autonomous command**:
  1. Click 1: both puppet + shadow raise together (SYNC).
  2. Click 2: puppet lowers, shadow follows later (~500ms Rive authored wait).
  3. Click 3: puppet raises, shadow follows later (~500ms).
  4. Click 4: puppet lowers, shadow refuses (holds up). A new `Puppet Pose` state waits 48 frames, then **raises puppet arm without any further click** (independent State Machine transition and keyed animation). Shadow follows lower once its own 120-frame hold elapses.
- New physical stage and 3rd native click listener compile on Rive CLI 1.5.1 (no external JS). **No live Rive Editor file or public Web bundle has yet been updated.**
- `scripts/validate-stage-v1.sh` reproduces Rive actual screenshots (Initial, Puppet click, Bell click, Bell→Puppet, 4th refusal at 300ms, puppet pulled up at 1400ms, shadow lowers at 2600ms, RESET after reversal, first click after RESET).

## Measured/inspected CI output

Rive CLI 1.5.1 native verify: **0 errors, 0 warnings**; inspect `problems: []`. XML checks: all IDs unique; puppet/shadow layers preserved; three stage listeners present.

The real PNGs exported by Rive and personally reviewed from the CI artifact demonstrate:

| Rive render | Puppet arm | Shadow arm | Evidence |
|---|---|---|---|
| `00-house.png` | DOWN | DOWN | Full stage visible |
| `01-puppet-input.png` | UP | UP | Synchronized first click |
| `04-reversal-resistance-300ms.png` | DOWN | UP | Shadow refuses after 4th input |
| `05-reversal-puppet-rises-1400ms.png` | UP | UP | Puppet moved **without another click** after 4th event |
| `06-reversal-shadow-follows-2600ms.png` | UP | DOWN | Visual role reversal |
| `07-reset-from-takeover.png` | DOWN | DOWN | **Pixel-identical** to initial `00-house.png` |
| `08-replay-after-reset.png` | UP | UP | **Pixel-identical** to first input `01-puppet-input.png` |

Deterministic byte comparisons are enforced in CI: if reset diverges from initial or first post-reset differs from the initial SYNC screenshot, workflow fails. A separate guard catches full-screen occlusion where input screenshots do not change.

## Previous observed negative event and recovery

`174e764`: new stage art compiled clean but screenshot all dark because Rive painter order is front-to-back. `5a29ea9` reordered shapes and face details; screenshot review then passed. This is preserved as a regression test. Do not conflate clean verify with appearance.

## Explicit limitations and next work

**LOCAL_RIVE_PROOF only:** screenshots are CLI-generated after synthetic pointer events. We have **not** yet tested this exact version in authenticated Rive Editor on file `2632594`, have **not** published the modified revision, and have **not** checked target Web playback/cold visitors or touch input.

The stage is a first simple vector look (still too flat for final Human Touch). It does not yet contain believable wood/cloth rendering, authored marionette bones/expression rig, audience, visual rope leading from shadow to puppet, interactive final decision, two ending paths, authored sound, GPU Canvas or full responsive setup. The four gestures improved time-to-signature but do not satisfy the **full interactive product** requirement.

Concept Lock, Build Candidate, LIVE, SUBMISSION_READY, social posting and final Contra submission remain blocked. Do not silently promote on the strength of this artifact. Human approval remains necessary for external account/publication actions.

## Next gate

1. Validate controlled **new Stage V1 source** in Rive Editor and live browser with no destruction of earlier source proof.
2. Make the direction of control visually legible: rope drawn from the autonomous shadow to the marionette joint, shadow physically pulls, puppet expression reacts; make cue bell a true diegetic stage prompt.
3. Develop user stage-operator purpose, audience/stage responses, two real endings and complete authored paper-theatre art.
4. Cold viewers must recognize the shadow as controller after the reversal, not mistake it for lag. Mouse + mobile/touch check.
5. Only then consider Concept Lock / final challenge submission review.
