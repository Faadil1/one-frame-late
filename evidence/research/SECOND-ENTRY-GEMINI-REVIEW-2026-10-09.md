# Second Rive Challenge entry — Gemini independent review (2026-10-09)

Status: RESEARCH / NOT CONCEPT LOCK. Third of five required independent external models received: **Perplexity + Claude + Gemini**. **Grok + Kimi pending.** DeepSeek auxiliary, GPT central synthesis after comparative confrontation. No Rive code/runtime/editor changes, no submission or gateway promotion.

## User-supplied Gemini recommendations

**A: THE EMBALMER'S RETOUCH** (Gemini winner): stylized Victorian post-mortem portrait preparation. Player uses brushes/adjustments to give a seemingly lifeless sitter a composed face. Mapped pointer-driven art deformation and expression; as pressure increases, sitter resists and a hand grips the on-scene instrument. Genuine Human Touch would need original handmade hatching/daguerreotype face, expressive yet restrained facial rig. Gemini asserted 36.5/40 but calculation mixed non-official category weights and should not be used as predictions.

**B: FOLD NO EVIL**: interactive 1920–1950s vintage pop-up anatomical storybook; drag tabs, paper mechanics; paper breaks, something escapes, book cannot flatten. Geometric pop-up rig and paper layering cost significant authoring effort; untested assertion that fallback is 100% deterministic and robust is NOT supported.

**C: THE DEVELOPING BATH**: chemical photographic bath produces strange portrait; photo lifted but depicted actor remains moving in liquid; user tries to retrieve. Materially adjacent to Perplexity's *THE LAST IMPRESSION (darkroom)*; not a new independent creative lane. Prior darkroom-horror research already finds collisions.

Gemini's dropped ideas: cursed mirror/booth, dissection, 3D escape room, musical automaton.

## Official rules corrections

Official: https://contra.com/community/topic/rivehalloweenchallenge/guidelines

- Deadline Oct 12, 2026, 23:59 PDT.
- Uses Rive CLI, GPU Canvas **or both**; both plus scripting/state/data favoured but not all mandated.
- Evaluation total: concept Halloween 10; Rive CLI/GPU Canvas 10; Human Touch 10; interactive motion 5; execution/polish 5.
- Human Touch means authentic personal style, art and motion choices with recorded Editor work, not automatically earned by a sophisticated generated portrait.
- Required real product video + editor/process + Rive live/share link + tagged social post; multiple separate new submissions permitted.

Gemini's matrix uses five dimensions but maps neither their weights nor totals coherently: appearance of 36.5/40 should not be represented as jury score or even a reproducible normalized heuristic.

## External novelty/differentiation research (first-party sources)

- **The Mortuary Assistant**, 2022 (https://store.steampowered.com/app/1295920/): corpse embalming and cosmetic mortuary actions under supernatural threat; overlaps occupational frame, not exact dynamic sitter/brush resistance.
- **Matsuro Palette**, 2020 (https://store.steampowered.com/app/1321120): a cursed painting where the player must finish a girl's portrait or suffer consequences. Strong picture-completion horror adjacency, not same embalmment physical mechanism.
- **The Perfect Portrait**, 2023 (https://knickknackpj.itch.io/the-perfect-portrait): interactive portrait with many expressions, horror and narrative; visual-narrative proximity, not same gesture-to-muscle effect.
- **Tengami**, 2014 (https://plugindigital.itch.io/tengami): paper folding/sliding through handcrafted pop-up worlds; undercuts 'pop-up mechanics are new'.
- **Aethel Fold**, Oct 2026 (https://konstantinsteinmiller.itch.io/aethel-fold): player's swipes fold and tear paper storybook elements for game mechanics; recent and close papercraft interaction.
- **Origami World**, Oct 2026 (https://suruimakesgame.itch.io/origami-world): 3D book worlds unfolding as player passes; adjacent materiality.
- **An unfolding Adventure** (https://craftycardboardcrafters.itch.io/an-unfolding-adventure): origami fold/pull mechanisms against parasite.
No cited result confirms exact 1:1 collision with either 'portrait resists retouch and grips tool' or 'pop-up pulls tear and inner creature escapes'. Novelty is not globally proven.

## Rive technical reality

- Rive native mesh deformation, vertex-to-bones binding and State Machine interaction have a public demo: https://www.rive.app/marketplace/2864-5956-prop-demo/ .
- Supported mesh/rig feature is **not evidence** a detailed skin/face rig with 4–6 bones from CLI and Luau produces credible real-time muscle movement; requires target runtime proof and focused spike.
- GPU Canvas opt-in via `@rive-app/webgl2` 2.42+, `enableGPUCanvas: true`, `useOffscreenRenderer: false`; feature experimental (https://rive.app/docs/runtimes/web/gpu-canvas). Independent WebGL context. **Do not assert 60/120 fps** without measurement, and do not conflate native vector mesh rendering with a GPU Canvas shader automatically performing all deformation.
- User OS pointer cannot be literally programmatically seized/repositioned by Rive's native state machine; simulate an in-scene, trackable tool and animate resistance, show physical mouse pointer remains free.
- Caution: render a **non-gory adult portrait** with human body dignity and fictional subject. Corpse of a child + sutures may be gratuitous and distract from artistic/creative judging; 'restore a memorial portrait' is softer but may blur the horror.
- GPU Canvas alone not proof; Web runtime and input tested in real browser, responsive and mouse/touch, accessible replay.
- Fold No Evil: nested rotations, clipping, Z-order and pointer hit-testing become increasingly costly; '100% deterministic/robust' is untested despite native transformation APIs. Smaller rigid panels vs character face may be easier, not guaranteed.

## Strategic assessment for second project

**Strengths** of Embalmer's Retouch:
- Viscerally direct gesture->face feedback.
- Strong original art/rigging exhibition if authentically hand-authored.
- Could differ substantially from ONE FRAME LATE's paper-shadow theatre in look.

**Weaknesses**:
- Core character resisting and grabbing tool still shares ONE FRAME LATE's 'subject initially obeys -> seizes control' dramatic topology. Need distinct causal signature, not just visual refresh.
- Visually believable expressions require high artistic skill, Rive editor iteration, and delicate mesh constraints. Gemini's apparent quick feasibility likely optimistic.
- Existing mortuary and haunted-painting games narrow novelty claims.
- The actual second-entrant vertical slice must be a playable coherent micro-experience, not one face-reaction tech demo.

**Enhancement hypothesis** (GPT exploratory, not Gemini claim):
The player is 'restoring' an image, but every stroke **erases evidence of the actual person** and substitutes a new version; the portrait tries to preserve its original identity. The causal conflict is erasure/editorship rather than another monster gains autonomy. Prove difference through two materially different user choices, negative outcome and recoverable undo, not just scripted gesture thresholds.

**FOLD NO EVIL**:
- Strong physical paper-art potential, but overlaps LA COCOTTE (Claude), existing paper-book games and ONE FRAME LATE crafted-paper aesthetic. Retain as substyle/backup, not a superior concept based on Geminis assertion.

**THE DEVELOPING BATH**:
- Downrank as highly adjacent to Perplexity photography/darkroom and known darkroom horror games. Does not justify second build without major mechanical invention.

## Updated provisional independent shortlist (not final)

1. **LA COCOTTE** (Claude): high unique mechanical hook *forbidden ninth flap + tiny inhabitant folding outer object* but hard folding runtime; test.
2. **LAST IMPRESSION (physical letterpress; world is peelable print)** (GPT exploratory): compelling medium-as-world twist, technical and competitive kill gate unresolved.
3. **THE EMBALMER'S RETOUCH** (Gemini): artistically ambitious, strong tactile immediacy; technically/emotionally high risk, duplicate reversal risk; further evaluation.
4. **LA DENTELLE** (DeepSeek auxiliary): unmistakable lace craft, but same role reversal / artist animates creature, and interactive threshold cost.
5. **THE LAST IMPRESSION (photo darkroom)** (Perplexity) and **THE DEVELOPING BATH** (Gemini): overlapping lane, external genre collisions -> lower rank.

This is subjective research triage, NOT a final model consensus or claim of benchmarked implementation.

## Hard decision controls

- ONE FRAME LATE remains primary priority and still needs Editor behavior, Web runtime and uninstructed-comprehension proof from its `state/CURRENT.yaml`.
- Await **Grok** and **Kimi** before six-model central synthesis and second concept decision.
- No new second repo or full build until concept selected with comparison, external collision search and a 90–180min Rive technical kill test.
- Keep Human Touch actual (art process, hand-authored stage/rig and Editor work) and avoid stage-only preseeded surprise represented as dynamic consequence.
- Submit with protected human approval and buffer; no chance-of-winning predictions.
- Canonical Conditional Gateway Registry remains in effect; nothing automatically promoted by Gemini's persuasive proposal.

Truth: OBSERVED = user-pasted independent Gemini output and cited public products/docs; INFERRED = competition/reuse/scope priorities; UNKNOWN = collision completeness, personal artist availability, hardware runtime and exact user comprehension.
