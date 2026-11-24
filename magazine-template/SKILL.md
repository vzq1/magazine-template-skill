---
name: magazine-template
description: Turn an academic paper, report, or case study into a print-ready, tech-magazine-style layout (Letter-size HTML pages that export to PDF), with magazine typography, varied page layouts, diagrams, charts, timelines, numbered processes, and category layouts, readable by older and colour-blind readers. Use when someone asks to make a paper "magazine style", build a magazine template for a paper, redesign a deliverable as a magazine or e-copy, or fill or update an existing magazine template with final content. Also covers folding a professor's or reviewer's comments into the new version.
---

# Magazine Template

Builds a multi-page magazine edition of a paper. The output is one HTML file in which each printed page is a fixed 8.5 × 11 in sheet that scales on screen. The file exports to a PDF that matches the screen.

Three standards apply to every page:
1. **It looks like a magazine.** Use magazine typography, and vary the layouts from page to page.
2. **Everyone can read it.** That includes older readers, colour-blind readers, and anyone holding a black-and-white printout.
3. **No page is half empty and nothing overflows.**

Bundled files:

| File | Purpose |
|---|---|
| `assets/starter.html` | Page system, type and colour tokens, icon set, and 13 starter pages, one for each archetype. Always start from a copy. |
| `references/layouts.md` | The seven page archetypes, variation rules, fill rules, and a typical page flow. Read it before planning pages. |
| `references/accessibility.md` | Type-size floor, contrast, colour-blind-safe colour rules, and the palette and its jobs. Read it before changing colours or sizes. |
| `references/components.md` | Catalog of component classes. |
| `references/charts.md` | SVG chart recipes with scale formulas and label sizes. |
| `scripts/render-pages.sh` | Screenshots every page into contact sheets so you can check fit. |
| `scripts/export-pdf.sh` | Renders the final Letter PDF. |

## Workflow

### 1. Gather the inputs

Collect what exists before designing anything:
- the paper or draft, even if unfinished
- the rubric or the reviewer's comments
- interview notes and data
- the names for the cover
- who will read it, for example an older professor or a print copy

If the content is not final, build anyway. Use the real content that exists and mark the gaps (step 6).

### 2. Research references

Search the web for tech and editorial magazine layouts, for example "tech magazine template InDesign", "Wired magazine layout grid", and "magazine infographic spread". Note how grids, captions, and charts share a page. Pasted Google Images links usually cannot be fetched, so run your own searches and list the sources you used.

### 3. Set the identity

- **Typography: magazine faces, three roles.**
  - Headlines and big numbers: a high-contrast didone display, Bodoni Moda at 700–900. Use italic for emphasis inside headlines and decks.
  - Labels, captions, tables, and chart text: a newsmagazine gothic, Libre Franklin at 500–800.
  - Body text: a sturdy reading serif, Source Serif 4.

  Load them from Google Fonts only. Do not use monospace for reading text. Swap faces only for ones in the same roles.
- **Motif.** Pick one graphic idea from the subject's own world and repeat it on the cover, contents, section markers, and back cover. For a jeepney-born agency, the motif was a route line with stops and signboard-yellow labels. The starter's line-and-stops SVG is a placeholder.
- **Palette.** Keep the token names, and give each colour one job. Follow `references/accessibility.md`: contrast of 7:1 or higher for body text, no red-versus-green pairs, and every colour backed by a word, shape, or line style.
- **Masthead.** Choose one short word tied to the motif. Set the trailing mark in heavy sans, because Bodoni hairlines vanish.

Avoid generic AI looks: cream with a serif and terracotta, purple gradients, emoji icons, and identical rounded cards.

### 4. Plan the pages

Write a page map before any HTML. Each row has the page number, archetype, paper section, main visual, and the reviewer comment it answers. Follow `references/layouts.md`:
- **Archetypes:** never use the same one on two pages in a row. Move the headline around. Rotate band and panel colours. Leave the running head off openers and split pages.
- **Visuals follow the content:** numbers become charts, a real sequence becomes a numbered process or timeline, categories become lanes, cards, or a 2×2, and comparisons become tables.
- **Reviewer comments:** give each one a visible answer. Add a "What changed" table that maps each comment to its page, and a "How to read this issue" legend.
- **Page count:** at readable sizes, a course paper runs 24–30 pages. That is expected. Do not shrink the type to save pages.

### 5. Build

1. Copy `assets/starter.html` and rename it.
2. Set the tokens, `<title>`, masthead, and motif.
3. For each planned page, copy the starter page of that archetype and replace its content.
4. Size everything with `calc(N*var(--u))`, where `--u` is 1px of an 816px page.
5. Make each SVG `viewBox` width equal to its rendered width in `u` (see `references/charts.md`), so chart text stays at its true size.
6. Number figures in order. Every caption names its source.
7. Use icons with `<svg class="ic"><use href="#i-name"/></svg>`. Add new ones as stroke-only symbols on a 24 × 24 grid.

### 6. Keep the data honest

- Use only figures from the sources, or arithmetic on them, and show the arithmetic.
- Mark missing facts with `<span class="tbd">what is needed</span>`. Badge invented chart values with `<span class="sample">Sample</span>`.
- Label the group's own judgments (ratings, owners, durations) as proposed.
- When sources conflict, use the more recent one, show the conflict on the page, and tell the user.

### 7. Check every page

```bash
scripts/render-pages.sh magazine.html <page-count> /tmp/render
```

Then view each `pages-N.png`. Fix these problems:
- **Overflow:** text cut off at the bottom, or a card hidden.
- **Dead space:** more than about 15% blank at the page bottom. Add real content from the fill list in `layouts.md`.
- **Repetition:** two pages in a row with the same structure.
- **Collisions:** chart labels crossing lines or running out of their area.
- **Too-small text:** anything under the floor in `accessibility.md`.

Downscaled contact sheets can make vertical text look like a solid bar. If something looks wrong, render that page alone at full size before changing it.

### 8. Deliver

- Export with `scripts/export-pdf.sh magazine.html out.pdf`. To print by hand from Chrome: Letter, margins None, Background graphics on.
- If the session can publish web pages (for example, Claude artifacts), publish the HTML. The file has no `<html>`/`<body>` tags of its own.
- In the reply, report three things: the page map, which page answers each reviewer comment, and every open placeholder or data conflict.

## Copy rules

- Headlines state the finding ("Coordination: shared data, distinct services"), not the topic.
- Use short, plain sentences with one idea each. Use a formal tone for academic or client work.
- Shorter copy is part of readability. When a page is too full, cut words before anything else.
- Captions say what the figure shows, then the source.
- Placeholders use [square brackets], so a search for `[` finds anything left unfilled.
