---
name: magazine-template
description: Turn an academic paper, report, or case study into a calm, print-ready magazine layout (Letter-size HTML pages that export to PDF), with serif-magazine typography, varied page layouts, diagrams, charts, timelines, and tables that older and colour-blind readers can read. Use when someone asks to make a paper "magazine style", build a magazine template for a paper, redesign a deliverable as a magazine or e-copy, or fill or update an existing magazine template with final content. Also covers folding a professor's or reviewer's comments into the new version, and reviewing the result.
---

# Magazine Template

Builds a multi-page magazine edition of a paper. The output is one HTML file. Each printed page is a fixed 8.5 × 11 in sheet that scales on screen, and the file exports to a matching PDF.

## The standard

Every page must pass all five:

1. **Calm.** One typeface family pair, seven sizes, one label per page, one accent colour per page, and no decoration that carries no meaning.
2. **Readable by everyone.** Body text 17u (about 12.75pt), nothing below 13u (about 9.75pt), contrast of 7:1 or more, and colour never the only cue.
3. **Varied.** No two pages in a row share a layout archetype.
4. **Full.** No dead space and no overflow.
5. **Gradable.** Running heads carry the paper's own section numbers, so a grader finds each rubric section fast.

Bundled files:

| File | Purpose |
|---|---|
| `assets/starter.html` | Tokens, type system, components, and 12 starter pages: one per archetype, plus an Open-items working page |
| `references/layouts.md` | Archetypes, variation rules, fill rules, and what clutter looks like |
| `references/accessibility.md` | Size floor, contrast, and the colour-blind-safe palette |
| `references/components.md` | Component classes |
| `references/charts.md` | SVG chart recipes with scale formulas |
| `references/review.md` | The three-reviewer quality check |
| `scripts/render-pages.sh` | Page screenshots for checking fit |
| `scripts/export-pdf.sh` | Final Letter PDF |

## Workflow

### 1. Gather the inputs

Collect what exists:
- the paper or draft
- the rubric and the reviewer's comments
- interview notes and data
- cover names
- the reader, for example an older professor reading on paper

Build even when the content is unfinished. Mark the gaps (step 6).

### 2. Research references

Search the web for editorial and tech-magazine layouts. Note the grids, caption styles, and how charts share a page with text. Pasted Google Images links usually cannot be fetched. List the sources you used.

### 3. Identity: keep it quiet

Type follows the "calm serif magazine" system in the starter:

| Role | Face | Sizes (u) |
|---|---|---|
| Headlines | Source Serif 4, 600, roman | 72 (openers), 48 (pages), 24 (subheads) |
| Body, decks | Source Serif 4, 400 | 17 body, 21 deck |
| Labels, tables, captions, numbers | Libre Franklin, 500 and 700 | 15 tables, 13 captions and labels, 44 stats (36–38 when four sit in a row) |
| Masthead only | Bodoni Moda 800 | Cover and back cover |

Follow these rules:
- **No italic headlines or coloured words in headlines.** Italic is allowed only for titles of works.
- **Caps only for table headers and the part label on opener bands.**
- **Two weights per family.** Do not add a third.

**Motif.** Pick one graphic idea from the subject's world, for example a route line for a jeepney-born agency. Use it only on the cover, contents, part openers, and back cover. Repeated on every page, it becomes kitsch.

**Colour.** Ink, grey, and white, plus one accent (blue) for data. A brand colour (yellow) appears only where the motif does. An alert colour (orange) appears only on risk or over-cost items. See `references/accessibility.md`.

### 4. Plan the pages

Write a page map first. Each row has the page, archetype, rubric section number, main visual, and the reviewer comment it answers. Follow `references/layouts.md`.

Content a reviewer will expect in an analysis paper:
- **Reviewer comments.** Map each one to the page that answers it ("Revision notes").
- **Current state vs target state.** Include a gap table that names the initiative closing each gap.
- **Business tools turned into actions.** For example, a SWOT followed by a TOWS table that maps strategies to initiatives.
- **Cost-benefit.** Show the basis of the rate, a breakdown, payback, a sensitivity table, and what is not yet costed.
- **KPIs.** Give each one a formula, owner, cadence, and target, and say which initiative moves it.
- **Risks.** Give each one a rating, a mitigation, and the initiative that addresses it.
- **Roadmap.** Use quarters, review gates with pass conditions, and say who approves.
- **Conclusion.** Add a one-page conclusion.
- **Open items.** Add a working page that lists every placeholder.

At readable sizes, a course paper becomes 28–36 pages. That is expected.

### 5. Build

1. Copy `assets/starter.html`.
2. Set the tokens, title, masthead, and motif.
3. Copy the starter page for each planned archetype and replace its content.
4. Size everything with `calc(N*var(--u))`.
5. Make each SVG `viewBox` width equal its rendered width in u (see `charts.md`).
6. Number figures in order, and cite a source in every caption.

### 6. Keep the data honest

- **Figures.** Use only figures from the sources, or arithmetic on them, and show the formula.
- **Placeholders.** Write them as plain `[brackets]`, styled `.tbd` (grey text), with no stripes or badges. List every one on the Open-items page, and delete that page before printing.
- **Sample charts.** Do not draw a chart of invented values. Leave it out until the data exists.
- **Assumptions.** Label the group's judgments (ratings, owners, durations) as proposed.
- **Conflicting sources.** Use the more recent source, note the conflict on the page, and tell the user.
- **Benchmarks.** Check every quoted benchmark against its cited source. When the figure differs from the source's headline number, say which table or category it comes from.
- **Counts.** Keep counts consistent across the cover, contents, and body (initiatives, KPIs, pages).

### 7. Check every page

```bash
scripts/render-pages.sh magazine.html <pages> /tmp/render
```

View each contact sheet. Fix these problems:
- overflow
- more than about 15% blank space
- two pages in a row with the same layout
- label collisions
- stats that wrap onto two lines
- a headline that overflows its panel
- text below the size floor

Contact sheets are downscaled. Confirm a suspected problem at full size before changing anything, and do not judge type size from a thumbnail.

For a final or graded deliverable, run the three-reviewer check in `references/review.md`, then fix what at least two reviewers agree on.

### 8. Deliver

- Export with `scripts/export-pdf.sh`. In Chrome, print to Letter with margins set to None and background graphics on.
- Publish the HTML if the session supports it.
- In the reply, report the page map, which page answers each comment, and the open items and data conflicts.

## Copy rules

- **Headlines state the finding in one plain sentence.** Do not use topic labels.
- **Use short, plain, formal sentences with one idea each.**
- **Cut words before shrinking type.**
