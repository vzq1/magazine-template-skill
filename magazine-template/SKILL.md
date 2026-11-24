---
name: magazine-template
description: Turn an academic paper, report, or case study into a print-ready, tech-magazine-style layout (Letter-size HTML pages that export to PDF), with diagrams, charts, timelines, numbered processes, and category layouts. Use when someone asks to make a paper "magazine style", build a magazine template for a paper, redesign a deliverable as a magazine or e-copy, or fill/update an existing magazine template with final content. Also covers folding a professor's or reviewer's comments into the new version.
---

# Magazine Template

Builds a multi-page magazine edition of a paper. The output is one HTML file. Each printed page is a fixed 8.5 × 11 in sheet that scales on screen, and the file exports to a PDF that matches the screen.

Bundled files:

- `assets/starter.html` holds the full page system and 11 starter pages with placeholder content. Always start from a copy. Never edit the asset itself.
- `references/components.md` is a catalog of every component class, what it is for, and when to use it.
- `references/charts.md` has the SVG chart recipes with the scale formulas, so every mark is drawn to scale.
- `scripts/export-pdf.sh` renders the HTML to a Letter PDF with headless Chrome. Use it to check the layout and to produce the final file.

## Workflow

### 1. Gather the inputs

Collect what exists before designing anything:

- the paper or draft, even if it is unfinished
- the rubric, assignment brief, or reviewer/professor comments
- interview notes, data, or appendices the paper draws on
- names for the cover: authors, instructor, course, institution

If the content is not final, build the template anyway. Fill it with the real content you have, and mark everything else as a placeholder (step 6).

### 2. Research references

Search the web for tech and editorial magazine layouts. Useful queries include "tech magazine template InDesign", "Wired magazine layout grid", and "magazine infographic spread". Note the grid, type pairing, figure and caption conventions, and how the charts share a page with copy. Google Images links the user pastes usually cannot be fetched, so run your own searches instead. List the sources you used when you report back.

### 3. Pick a visual identity from the subject

Replace the starter's motif and token values. Keep the token names. Decide these four things:

- **Motif.** Choose one graphic idea from the subject's own world and repeat it: on the cover, the contents, the section markers, and the back cover. For a Philippine agency formerly named after the jeepney, the motif was a jeepney route line, with sections as stops and section labels as yellow route signboards. For a logistics firm it might be a shipping lane; for a hospital, a patient pathway. The starter's line-and-stops SVG is a placeholder for the motif.
- **Palette.** Use four to six tokens, and give each colour a job. Write the jobs down and keep to them. For example: accent = section markers and one category, data blue = charts and a second category, red = risk only, green = positive outcomes only.
- **Type.** Use a display face with a width axis for headlines (starter: Archivo, condensed at `font-stretch:72%`), a serif for body text (Source Serif 4), and a mono for labels, captions, and data (IBM Plex Mono). Load them from Google Fonts only.
- **Masthead.** Give the magazine a short one-word name tied to the motif. The starter uses `MASTHEAD+`.

Avoid generic AI looks: warm cream with a serif and terracotta, purple-to-blue gradients, emoji as icons, and identical rounded cards everywhere.

### 4. Plan the pages before writing HTML

Make a page map. Each row lists the page number, the paper section, the main visual, and which reviewer comment the page answers. Rules:

- **Match the visual to the content.** Numbers become charts. A real sequence becomes a numbered process or timeline. Categories become lanes, matrices, or tagged cards. Comparisons become tables or a 2×2. Use numbered markers only when the order is real.
- **Vary the layouts.** Consecutive pages should not share the same structure. Mix full-width figures, 7/5 and 8/4 splits, giant stats, and tables.
- **Answer every comment on a page.** Give each reviewer comment its own visible answer. Add a "Revision notes" table on the contents page that maps each comment to the page that answers it.
- **Size the issue to the content.** A full course paper usually runs 12–18 pages: cover, contents with the executive summary, the section pages, and references with the back cover.

### 5. Build

1. Copy `assets/starter.html` to the working folder under a descriptive name.
2. Update the `:root` tokens, `<title>`, masthead, and motif SVG.
3. For each planned page, copy the closest starter `<section class="sheet">` and replace its content. Keep the page anatomy the same on every page:
   - running head (`.rh`) with the part name and a `.board` section label
   - kicker, headline, and a deck or lead
   - content
   - folio (`.folio`) with the page number
4. Number figures in order (`Fig. 1`, `Fig. 2`, …). Every caption should name its source.
5. Size everything with `calc(N*var(--u))`. `--u` is one CSS pixel of an 816 px page, so pages scale as one unit. SVG charts use their own `viewBox` units.
6. Icons are line symbols defined at the top of the file. Use them with `<svg class="ic"><use href="#i-name"/></svg>`. Add new symbols in the same style: 24 × 24 grid, stroke only, `currentColor`.

### 6. Keep the data honest

- Use only figures that come from the paper, the sources, or arithmetic on them. Show the arithmetic in the caption or the note: rate × hours, compounding, percentages.
- Mark missing facts inline with `<span class="tbd">what is needed</span>`. They render as striped yellow highlights, so they are easy to find and impossible to miss in a draft.
- Badge any chart drawn with invented values with `<span class="sample">Sample data</span>`. Never present sample values as findings.
- Label the group's own judgments (ratings, owners, durations) as proposed or as the group's assessment.
- When two sources disagree (for example, a growth target in one deliverable and a different one in an interview), use the more recent source. Flag the conflict to the user.

### 7. Check the render

Pages have a fixed height and hide overflow. Content that runs long is silently cut off, so always check:

```bash
scripts/export-pdf.sh path/to/magazine.html /tmp/check.pdf
```

Then look at the pages. On macOS, `qlmanage -t -s 1200 -o /tmp /tmp/check.pdf` makes a thumbnail of page 1. For every page, a headless Chrome screenshot at `--window-size=900,<pages×1088>` of the file works, wrapped in `<!doctype html>` as the export script does. Fix these problems:

- text cut off at the bottom of a page
- SVG labels running past their quadrant or bar
- a page that is mostly empty

Shorten the copy before you shrink the type. Body text should not go below 8.5 u.

### 8. Deliver

- Export the final PDF with `scripts/export-pdf.sh`. The PDF is Letter-size with backgrounds included.
- To print by hand instead, open the HTML in Chrome and print with these settings: Letter, margins None, "Background graphics" on.
- If the session can publish web pages (for example, Claude artifacts), publish the HTML so teammates can view it. Note that the page file must not include its own `<html>`/`<body>` tags. The starter already follows that rule.
- In the reply, list three things: the page map, which reviewer comments each page answers, and every open placeholder or data conflict the group must resolve.

## Writing rules for the copy

- Headlines state the finding ("Coordination: shared project data, distinct services"), not the topic ("Operating Model").
- Use plain, direct sentences, one idea each. Use a formal tone for academic or client deliverables.
- Captions are short: what the figure shows, then the source.
- No lorem ipsum. Starter placeholders use [square brackets] so a search for `[` finds anything left unfilled.
