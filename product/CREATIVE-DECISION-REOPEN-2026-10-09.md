# ONE FRAME LATE — Creative Decision Reopen / Winning Intelligence Delta — 2026-10-09

**Status:** research recommendation; **NOT** Concept Lock; **NO** runtime, Rive, or gate promotion.  
**Project:** Faadil1/one-frame-late, branch feat/technical-reality-spike-01, draft PR #1.  
**External deadline:** 2026-10-12 23:59 PDT, protected human challenge submission and public social sharing.  
**Source:** user-provided 120-card Contra Recent feed copy, supplemented by 115-link F12 JSON, published Rive contest guidelines, public Rive documentation and current repository state.

## Reason to reopen

The scope of competition is materially stronger than the initial 14-card sample implied. There are approximately 120 main-post cards in the user's copied Recent feed; 61 have a visible `Submission` label, but some products have multiple posts and some tagged posts are unrelated. No count is a verified census of official eligible submissions. Current public posts feature polished full-stack mini-games (Trick or Room, DOMOVOI, Evening Star, The Last Lantern), strongly art-directed work (Boo's Vigil, Haunted Room), and physically-governed interaction (Don't Look Away).

**Official judging (40 pts):** Creative concept/Halloween 10, Rive CLI+GPU Canvas 10, Human Touch 10, Interactive motion 5, Execution/polish 5. Official: https://contra.com/community/topic/rivehalloweenchallenge/guidelines

`scene.rml` current observed capability: state machine + view model implements 4 SYNC puppet pose changes, 2 DELAY (~500ms) changes and SHADOW_HOLD on >=7 (~2s), RESET in Rive CLI headless. This is a validated **LOCAL prototype**, not yet editor-behavior/hosted-live-comprehension evidence. Seven repetitive gesture changes before a meaningful refusal is an onboarding risk, not judge-ready dramaturgy.

## Competition: close mechanisms / caution

| Example | Observed distinction | Relevant lesson |
|---|---|---|
| The Night Clerk (Yannick gueye): https://contra.com/community/S9Twlp80-the-night-clerk-haunted-lost-and-found-interactive | Recover a stolen shadow by opening haunted drawers | Shadow motif already used; exact causal contract still distinct only as a hypothesis |
| Séance Switchboard (Billy VanVorst): https://contra.com/community/R1HRKY5B-interactive-haunted-switchboard-with-reactive-audio | Real-feeling haunted physical device gradually gets out of control | Mere 'object becomes unresponsive' is not a unique twist |
| Haunted Experience (Abdullah): https://contra.com/community/HDmvlnI0-haunted-interactive-rive-experience-with-animated | Candles, spirits, shadows, tearing veil | Light/shadow aesthetic not unique |
| Don't Look Away (Aleksandr Khrukalo): https://contra.com/community/GwKoYTnj-dont-look-away-candle-lit-horror-game | Entity moves only when candlelight is diverted | Excellent immediately readable physical horror law; avoids decorative shader |
| Trick or Room (Math Notermans): https://contra.com/community/B9VTpRCo-trick-or-room-a-multiplayer-haunted | 175 Luau tests, player-created rooms, judge mode, manually rigged Jack, true GPU shadow/afterimages | Do not try to win via number of shallow game mechanics; win via authored visual identity and a memorable consequence |
| Boo's Vigil (Victoria diaz): https://contra.com/community/3uOACUoM-hand-drawn-ghost-survival-game-built-with | Distinct sepia paper texture, authored expression rig, light/defense gameplay | Hand-crafted coherent visual language is already competitive |
| The Last Lantern, Halloween Hotel, BÂTIMENT C | Complex 3D/Blender/GPU Canvas | Tool novelty and 3D alone are commoditized in this field |

**Competition truth:** no *demonstrated* direct puppet->shadow delay->refusal->reversed strings mechanics in reviewed public descriptions. Many descriptions/videos and other channels not audited; global novelty remains UNKNOWN.

## Alternatives (subjective strategic estimates, NOT jury scores)

All estimates out of 10, as internally proposed research hypotheses.

| Option | Hook / consequence | Distinctiveness | Build feasibility by deadline | Human Touch potential | Decision |
|---|---|---:|---:|---:|---|
| **A — ONE FRAME LATE: THE SHADOW PULLS THE STRINGS** | Mimicking shadow refuses, raises its hand; physical control strings then run FROM the shadow to the puppet: puppet jerks against the user's gesture; lamp dies, autonomous shadow remains | 9 | 8 if kept single-scene/native-state architecture | 10 | **RECOMMENDED** |
| B — THE AUDIENCE IS THE PUPPET | User's pointer becomes a dangling marionette; silhouette looks out of stage and takes over | 9 | 5, pointer-to-strings gestures / ambiguous UI without extra engineering | 8 | High-risk extension, not primary |
| C — THE LAST LIGHT / UNCAST | Player moves a light source to cast fake/real projected silhouette; it remains after extinguishing the source | 7 | 7 | 9 | Retain only as an act of A, not standalone; lamp/lights heavily used |
| D — CURTAIN CALL | Each curtain opening changes the same performance until the shadow refuses the next cue | 7 | 9 | 9 | Backup ending, weaker reversal |
| E — RIGOR MORTIS / full independent skeletal 3D rigs | Hand-animated body/rig comes alive without player | 8 | 2 | 9 | KILL before deadline; high scope+compatibility risk |
| F — generic haunted UI/CRT/ghost cursor | Possessed UI reveal | 3 | 8 | 5 | KILLED as crowded from 120-post sample |

## Leading proposal — micro-theatre, not thin technical proof

Working title remains ONE FRAME LATE. Potential tagline 'You pull the strings. Until it does.' The alternate name is not cleared; do not rename without naming/collision review.

### Intentional 3-action choreography (avoid 7 repetitive clicks)

1. **First physical contract, immediate:** user raises puppet's arm via visible handle/control (or pulls a paper-tab); corresponding shadow accurately mirrors in same apparent light geometry. A visible puppet lamp and translucent fabric stage establish causality. **First-five-second test.**
2. **First negative event:** user pulls arm down, shadow lags, then freezes **against** the pull, looking at the puppet or audience. Use intentional sound/cue and secondary response, not a generic 500ms delayed blend indistinguishable from stutter.
3. **Inversion:** user tries again: shadow takes initiative, draws strings to puppet joints / turns around, visibly moves puppet against user intent; a true reversed command path in Rive state logic, with observable pose change. Then the lamp flickers or goes out and shadow persists as impossible climax. Clear REPLAY resets all states.

The order/timing can adapt based on uninstructed viewer tests; no 30-sec forced scene if judges need to interact. All beats must be reachable in a web Rive runtime and preserve agency.

### Build spine

- Existing Puppet Pose / Shadow Relationship native state machines + ViewModel state; explicit state types (OBEY, HESITATE, REFUSE, REVERSE, DARK_RESIDUE, RESET) and testable transitions.
- Puppet silhouette, hinge/bones, translucent scrim screen and hanging rods as vector & illustrated elements. Illustrator/Figma for authored cutouts, Blender optional bounded look-dev for backdrop/reference only.
- Rive Editor **real authoring** for custom vector/rig/expressions/hand timing; capture proof as required. Avoid generic AI-generated visual defaults.
- WGSL GPU Canvas **load-bearing** as light falloff/light cone/scrim contact plus the deliberately impossible persistence. Bind uniforms to native game state. Do not represent a stylized shadow animation as mathematically raytraced physical shadow; label honestly if shader only composites light.
- One complete interactive scene in Rive. No dependency on detached Three.js to simulate the twist or replace Rive state machine.
- Sound optional; dynamic SFX for hinge, string snap, lamp click, room tone. No autoplay dependence; reduced-motion path and visible sound toggle only if truly implemented.
- Reset restores control and actor relationships. Implement real success/negative/recovery, preserve playable controls for mouse/touch.
- Built behavior must precede demo captures, not reverse.
- Explicitly prioritize live user/core loop and behavioral consequence; vertical slice is an entry, **not** Definition of Done. Continue polish/depth as justified, but no uncontrolled tool additions.
- Art: performable, credible theatre (cutout edge texture, imperfect joints/handcraft, distinctive stage frame, light cloth) rather than 3D tech showcase. Physical shadow theatre craft can be researched without importing copyrighted assets.

## Decision rule / checkpoints

**Pre-Concept-Lock gates:** Competitive Novelty / Kill reopen ACTIVE, technical reality blocked until Rive Editor behavior and target runtime observed, First Five Second Comprehension ACTIVE, Truth Boundary ACTIVE; six-model comparative review previously completed for original direction, but **this new material inversion was NOT re-run through six model reviewers**; do not claim it was. Rerun or explicitly complete required pre-lock review before promotion.

**Go to execution only if:**
1. Editor preview of existing spike's SYNC/DELAY/HOLD/RESET behavior observed.
2. Short hosted Rive runtime trial confirms state+bindings in the judge target. If publish required, respect controlled preview/protected public launch; never silently publicize.
3. In a focused technical spike, third-action REVERSAL genuinely moves puppet against previously chosen pose based on shadow state. If infeasible by timebox, revert to well-perceived autonomous SHADOW_HOLD + leave-the-stage ending rather than fake reverse control.
4. Uninstructed humans can describe intentional shadow disobedience (not merely graphics lag).
5. Canvas/WGSL works on actual target; otherwise do not claim dual-stack or GPU-ready.

**Schedule, deadline-aware (not a promise of completion):**
- Oct 9: Editor/runtime validation, lock exact dramatic mechanics after comparative research, first meaningful refusal within 2 interactions.
- Oct 10: complete negative path + reversed puppet control + reset + 1 reliable playable web Rive build; cut features if not working.
- Oct 11: Human Touch art pass, bounded load-bearing GPU Canvas, sound/polish, cold-visitor testing across desktop/mobile, screenshots.
- Oct 12: regression, real runtime check, 30+ sec screen-recorded actual product + CLI/RML + Editor process, publish/share steps with human approval, submit well before 23:59 PDT buffer.

**Judge-proof story:** Learn the rule -> cause its violation -> witness the puppet become controlled -> replay and verify. The surprise must be self-evident before any verbal explanation. The stage and editable Rive artifact are part of what judges inspect.

## Protected actions / state

No code edits, Rive publishes, public social post, challenge submissions, Concept Lock or gate promotion made by this research note. This is a *decision memo*, not proof the inversion has been implemented.

Research provenance: public Contra user-supplied 120-card copy `Pasted text(7).txt`; GitHub `state/CURRENT.yaml`, `state/HANDOVER.yaml`, `product/GATEWAY-REGISTRY.yaml`, `rive/spike-01/scene.rml`; official guidelines above.

## Target verdict

**Candidate decision: CONTINUE + SHARPEN the ON-STAGE ROLE REVERSAL, with stage-three reverse-control as a timeboxed technical hypothesis.** Conditional no-pivot. Reopen concept gate before formal lock, not promotional status.
