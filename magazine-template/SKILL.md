---
name: magazine-template
description: Turn an academic paper, report, or case study into a real magazine edition (Letter-size HTML pages shown as spreads, exported to PDF), with magazine-density typography, illustrated openers, sidebars, pull quotes, infographics, diagrams, charts, and tables that stay calm and readable for every reader. Use when someone asks to make a paper "magazine style", build a magazine template for a paper, redesign a deliverable as a magazine or e-copy, or fill or update an existing magazine with final content. Also covers folding a professor's or reviewer's comments into the new version, and reviewing the result.
---

# Magazine Template

Builds a multi-page magazine edition of a paper. The output is one HTML file:
- On wide screens, pages show as two-page spreads.
- In print, each page is a Letter sheet, and the file exports to a matching PDF.

## The standard

1. **It reads like a magazine, not a slide deck or a report.**
   - Body text is about 10pt in justified, hyphenated columns.
   - Furniture is small: kickers, standfirsts, bylines, captions, and folios.
   - Pages carry real magazine elements: illustrated openers, a contents page with a masthead, an editor's letter, sidebars, pull quotes, a Q&A, a "By the numbers" page, and a back cover.
2. **It stays calm.** Use two families plus a masthead face, one accent colour for data, the brand colour only in the motif, one label per page, and no decoration that carries no meaning.
3. **Readers can read it.** Nothing prints below 11u (8.25pt), contrast stays high, and colour is never the only cue.
4. **The pages vary.** No two pages in a row share an archetype.
5. **Every page is full.** No dead space and no overflow.
6. **A grader can find the rubric.** Kickers and running heads carry the paper's own section numbers.

Bundled files:

| File | Purpose |
|---|---|
| `assets/starter.html` | Tokens, type, components, generated art, and 7 starter pages: cover, contents with masthead, feature, by-the-numbers, bleed opener, table with Q&A, and data spread |
| `references/layouts.md` | Magazine anatomy, archetypes, variation, fill and clutter rules |
| `references/accessibility.md` | Print-size floor, contrast, and colour rules |
| `references/components.md` | Classes |
| `references/charts.md` | SVG chart and infographic recipes |
| `references/review.md` | The three-reviewer quality check |
| `scripts/city_art.py` | Generates the transit-map illustration used for the cover and openers |
| `scripts/render-pages.sh` | Page screenshots for checking fit |
| `scripts/export-pdf.sh` | Final PDF |

## Workflow

### 1. Gather the inputs

Collect the paper, the rubric and reviewer comments, interview notes and data, and the cover names. Note who the reader is. Build even when the content is unfinished, and mark the gaps (step 6).

### 2. Research references

Search the web for editorial and tech-magazine spreads. Study real magazine anatomy: how decks, bylines, and captions sit; column counts; how sidebars and pull quotes break the text. Design-skill libraries give useful principles:
- Data-ink ratio and direct labels.
- Size steps of 1.5× or more between hierarchy levels.
- The squint test: the hierarchy should still read with blurred eyes.
- A modular grid, broken on purpose.

### 3. Identity

**Type: the "calm serif magazine" system.**

| Role | Face | Size in u (1u = 0.75pt) |
|---|---|---|
| Opener / feature headlines | Source Serif 4, 700 | 70–92 opener, 58 feature, 40 section, 26 small |
| Standfirst (dek) | Source Serif 4, 400 | 18 |
| Body, 3 columns, justified, hyphenated | Source Serif 4, 400 | 13.5 on 1.42 |
| Kicker, byline, running head, folio | Libre Franklin, 700–800, caps, tracked | 11–11.5 |
| Captions, sidebars, tables | Libre Franklin, 400–800 | 11.5–12.5 |
| Feature numbers | Libre Franklin, 800, tabular, no wrap | 40–80 |
| Masthead only | Bodoni Moda, 800 | cover and back cover |

- No italic or coloured words in headlines.
- Caps only for kickers, running heads, folios, sidebar titles, and table headers.

**Motif and art.** Pick one idea from the subject's world. For an agency named after the jeepney, it was a transit-map city. Generate it with `scripts/city_art.py` and place different crops on the cover, the contents thumbnail, each part opener, and the back cover. Inner pages use ink, grey, and one data accent only.

### 4. Plan the pages

Write a page map: page, left or right, archetype, rubric section, main visual, and the reviewer comment it answers. Follow `references/layouts.md` for anatomy and variation.

Expected content for an analysis paper:
- The reviewer comments answered ("Letters")
- Current versus target state, with a gap table
- SWOT turned into a TOWS table
- Cost-benefit with basis, breakdown, payback, and sensitivity
- KPIs with owner, cadence, target, and initiative
- Risks with a heat map and a register
- A roadmap with gates
- A conclusion
- A removable Open-items page

A course paper typically becomes 26–30 magazine pages.

### 5. Build

1. Copy `assets/starter.html`, or write a small generator script when pages repeat structures (icon arrays, waffle charts, timelines, art crops).
2. Pages sit inside `.book`. The first sheet is the cover, which lands on the right. Pages alternate `odd` (right) and `even` (left) for mirrored folios and running heads.
3. Size everything with `calc(N*var(--u))`. Make each SVG `viewBox` width equal its rendered width in u.
4. To crop generated art, place `<use href="#id" width="800" height="800">` inside an `svg.art` with the crop as its `viewBox`. Without the width and height, the crop does not work.

### 6. Keep the data honest

- Use only sourced figures or arithmetic on them, and show the formula.
- Write placeholders as plain `[brackets]` (`.tbd`) and list every one on the Open-items page.
- Do not chart invented data.
- Paraphrased interview Q&A must say it is paraphrased.
- Check every benchmark against its cited source.
- Keep counts (initiatives, KPIs, pages) consistent everywhere.
- Flag conflicts between sources on the page and to the user.

### 7. Check every page

```bash
scripts/render-pages.sh magazine.html <pages> /tmp/render
```

The render shows one page per row. Fix these problems:
- overflow
- more than about 15% blank space
- two pages in a row with the same layout
- label collisions
- numbers that wrap
- justified text with rivers inside narrow boxes (sidebars stay left-aligned)
- clipped timelines
- art crops that look wrong

Confirm any suspected problem at full size before changing it. For graded work, run `references/review.md`.

### 8. Deliver

- Export with `scripts/export-pdf.sh`. Print to Letter with margins set to None and background graphics on.
- Publish the HTML if the session can.
- Report the page map, which page answers each comment, the open items, and any data conflicts.

## Copy rules

- Headlines state the finding.
- Standfirsts add the "so what".
- Body text is written as real paragraphs of 60–90 words, not bullet fragments.
- Use short, plain, formal sentences.
- Captions say what the figure shows, then the source.
