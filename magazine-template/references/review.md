# Three-reviewer quality check

Run this before a graded or final deliverable, or whenever the user says the result feels off. Render the pages first with `scripts/render-pages.sh`. Then launch three independent, read-only reviewers in parallel (subagents, if the session can spawn them). Give each one the HTML path, the contact-sheet paths, and the user's own reaction.

## Reviewer 1: layout-principles auditor

Ask this reviewer to:
- Score every rule in `layouts.md`, `accessibility.md`, and `SKILL.md` as Pass, Partial, or Fail, listing the violating pages.
- Count the clutter: distinct font sizes, weights, and styles; label, chip, and box treatments; caps labels per page; focal points per page; colour meanings.
- Name the five worst pages and give the ten top fixes, each specific enough to implement.

## Reviewer 2: subject-matter professor

Give it the course name, the rubric or the earlier review comments, and the source facts. Ask it to:
- Mark each earlier comment as addressed, partially addressed, or not addressed, saying what is still missing.
- Review the substance: soundness of the framework, the business case, KPIs, risks, and roadmap; missing artifacts; factual errors; overclaims; inconsistent counts.
- Judge the presentation from the grader's chair: can it find sections, can it read the print, is anything unfinished?
- Give an estimated score with a rubric breakdown and the eight changes worth the most points.

## Reviewer 3: senior editorial designer

Frame it as the head of design at a respected tech magazine. Ask it to:
- Give a first impression in three sentences.
- Critique the type program and propose a concrete replacement (Google Fonts, sizes, weights, rules for italic and caps).
- Critique clutter: component sprawl, colour, decoration, grid discipline, and whether the motif works.
- Critique each chart.
- Write a ranked brief of ten changes and a palette with one rule for accents.

## Synthesis

1. **Act on agreement:** apply fixes that two or more reviewers agree on.
2. **Ask the user about conflicts:** for example, the designer and the auditor proposing different typefaces. Recommend one option.
3. **Check reviewer claims before acting.** Reviewers working from downscaled images misjudge type size.
4. **Update the skill:** add any new rule to `layouts.md` or `accessibility.md` so the problem does not return.
