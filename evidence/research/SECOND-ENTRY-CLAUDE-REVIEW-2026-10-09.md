# Second Rive Challenge entry — Claude independent review (2026-10-09)

**Status:** RESEARCH; canonical external review **2/5** (Perplexity, Claude received; Gemini/Grok/Kimi pending). DeepSeek is auxiliary and does not replace any of those five. GPT central synthesis pending. **No second concept lock, no second build authorization, no technical/runtime proof.**

## Claude's submitted recommendation (user-provided)

**LA COCOTTE** — handmade paper fortune-teller/cootie catcher. Select colour/number; open flaps, the eighth reveals forbidden warning; impossibly nested fold and a miniature figure opening the inner paper object, which causes the outer cocotte to open. Tactile, illustrated/hand-scanned real paper with childlike handwriting, sweets and stains; physical making process shown as Human Touch evidence.

Claude's other candidates:
- **LE FROTTIS** — rub charcoal over an epitaph; missing engravings emerge, eventually revealing the current rubbing hand. Manual charcoal art, GPU reveal mask.
- **LES TROUS D'YEUX** — cutting a sheet-ghost's eyes reveals other watchers; high overlap with well-established iconography; contingency only.
- Eliminated: delayed mirror/flipbook, haunted Ouija/music box, haunted UI, potions and generic UI refusal.

Claude's key constraint: only second build if a short technical kill-gate passes and ONE FRAME LATE's real runtime path is not put at risk.

## Verified rules and technical constraints

Official guidelines: https://contra.com/community/topic/rivehalloweenchallenge/guidelines .
- Due Oct 12, 2026 at 23:59 PDT. Multiple separately submitted **new** entries allowed.
- Use Rive CLI, GPU Canvas **or both** (both score higher). Submission: playable Rive link/embedded URL, demonstration video showing use and CLI/RML + Rive Editor, description. Social post tagging @rive_app required.
- Scoring (40): concept/Halloween 10; CLI + GPU Canvas 10; Human Touch 10; interactive motion 5; polish/execution 5.
- **Correction to Claude:** CLI and GPU Canvas are not both an absolute eligibility requirement, although using both is incentivized.
GPU Canvas: https://rive.app/docs/runtimes/web/gpu-canvas
- `@rive-app/webgl2` >=2.42.0, `enableGPUCanvas: true`, per-canvas WebGL context, experimental; cannot assume generic Canvas2D compatibility.
Rive WGSL Shaders: https://rive.app/docs/scripting/wgsl-shaders
- Artboard can be rendered offscreen (`instance:draw(srcRenderer)`) and `srcCanvas.image:view()` used as shader texture. This **does not guarantee** live folding/textured animated quads or nested recursive scenes without a spike.
- For simpler effects Rive supports imported raster art mesh deformation: https://rive.app/blog/new-features-released-mesh-deformation-and-psd-support .
- Rive forum distinguishes 2D-on-3D via third-party runtimes (Unity/ThreeJS) from GPU Canvas web and is not a guarantee of the exact proposed single-Rive implementation: https://rive.app/community/forums/support/fsnLLkXUaA62/how-to-render-interactive-2d-graphics-on-3d-objects/ftjt7NT0BUWn .

## Novelty check

Digital cootie-catchers / interactive foldable fortune tellers pre-exist:
- https://www.pickja.com/fortune/paper-fortune-teller — digital 3D, colour/number/flap choices.
- https://play.google.com/store/apps/details?id=com.climacus.cootiecatcher — interactive 3D digital fortune teller.
- https://origamifortune.com — customised print/play.
- https://folklore.usc.edu/paper-origami-fortune-teller/ — the traditional physical interactive experience.

No exact match observed in *targeted* public search for the **forbidden flap -> impossible nested recursive folding -> miniature actor operates outer object** mechanism. Lack of observed match ≠ novelty proven. F12 Recent 120-card copy contains no explicit paper fortune-teller submission, but other challenge surfaces, later posts and off-platform work were not fully audited.

**Important creative pitfall:** a typical paper fortune teller already has **eight hidden fortunes**, so the 'eighth' is not physically impossible. The impossible event needs to be a **ninth hidden flap** or a clearly impossible nested fold/depth beyond an otherwise recognizable eight-flap object. Keep the user's interaction voluntary and readable; show 'do not open' quickly and make visible user consequence. A physically crafted scanned paper toy has strong Human Touch evidence if actually created and edited, not just claimed.

## Contrast with ONE FRAME LATE and other second-entry candidates

ONE FRAME LATE: physical paper shadow puppet / temporal relationship -> shadow disobedience -> puppet control inversion; local Rive spike only, web runtime and uninstructed comprehension unproven. First entry and priority.

LA COCOTTE:
- Distinct visual object (playground folded paper), design language (paper creases, candies, coloured fortune flaps), and spatial paradox rather than shadow agency.
- Possible shared abstract theme (user creates an impossible outcome), but sufficiently different mechanism if the paper itself becomes physically impossible, not just a figure seizing input.
- Prior digital cootie catchers prove the baseline interaction is not novel; surprise depends entirely on the recursive impossibility.
- Deadline risk: **high** for real textured 3D folding via WebGL2; paper scan/physical manipulation + native state machine / Rive mesh technique might be more reliably art-directed.

Relative priority, subjective:
1. LA COCOTTE: strongest candidate from independent Claude review, conditional technical kill-gate.
2. Earlier GPT LAST IMPRESSION (letterpress prints universe): still candidate; shares 'medium turns into world' but different craft.
3. LA DENTELLE (DeepSeek auxiliary): beautiful craft, but the creation becomes autonomous, closer to ONE FRAME LATE's reversal.
4. Perplexity THE LAST IMPRESSION (darkroom): existing darkroom photo horror collisions. Lower priority.
5. LE FROTTIS: compact backup but a rub-to-reveal shader can look like an effect demo, and its hand revealing itself is photo/reflection-adjacent.

## Execution reality / Conditional Gateway Registry

**Gates untouched:** Creative Divergence ACTIVE for second project; Competitive Novelty/Kill ACTIVE/NOT LOCKED; Technical Reality BLOCKED until exact implementation tested; Truth Boundary ACTIVE; Negative Path ACTIVE (failed/abstain/unknown possible); Evidence Integrity ACTIVE; Live Runtime and external-user evidence BLOCKED; Concept Lock BLOCKED; Human Touch not PROVEN for second project; all conditional registered gates remain registered, and original One Frame Late gates unchanged.

Before second candidate launch:
1. **FIRST:** confirm ONE FRAME LATE Editor behavior and target Rive web runtime. Its existing `state/CURRENT.yaml` and `product/GATEWAY-REGISTRY.yaml` explicitly BLOCKED on this.
2. Conclude five independent model reviews: Gemini, Grok, Kimi still missing; GPT central synthesis. Do not label Claude idea as agreed winner.
3. If selecting LA COCOTTE: perform a bounded **90–180 minute spike**: 4 moving flaps + 1 bound view-model choice, actual .riv runtime in target web, native input mouse/touch, direct demonstration that a textured artboard can reside on a folding face; verify basic shader if included.
4. If true 3D fails, attempt one bounded 2.5D native Rive mesh/hinge fallback; it must look convincing on phone and support paper authored art, otherwise candidate **KILL**, do not fake as 3D.
5. Within 3 interactions, find forbidden ninth flap -> nested reveal -> tiny drawn figure opens outer flap, then reset; use authentic physical origami filmed at process time if possible. Uninstructed 5 participants should see / understand surprise without explanation.
6. If 1st project not web-live by Saturday noon, avoid continuing parallel full-build work. Protected public launch, final social post and final challenge submission remain human checkpoints.

## Exact outcome

**CLAUDE REVIEW RECEIVED / 2 of 5 EXTERNAL**; **LA COCOTTE = SHORTLIST (CONDITIONAL)**. Claims of 3D textured fold, gameplay, physical art capture, full mobile support and novelty remain unproven. No changes to project build or gate state.
