# Page archetypes and variation

A magazine feels designed when its pages differ. It feels generated when every page repeats "running head, kicker, headline, deck, content". The starter has seven archetypes. Plan every page as one of them, and break the pattern on purpose.

| Archetype | How it looks | Best for | Starter class |
|---|---|---|---|
| **Opener band** | Full-bleed colour band across the top third: part label, huge headline, deck, ghost numeral. No running head. | The first page of each part | `.page.flush` + `.band` (`.cob`, `.sig` variants) |
| **Panel split** | A tall coloured panel down the left third with the headline and big stats; content on the right. | Contents, single-topic pages, checklists | `.page.split` + `.panel` (`.sig`) + `.mainc` |
| **Feature** | Large headline, stats strip, two-column body with drop cap, pull quote, short closing list. | Executive summary, narrative sections | default `.page` + `.cols2` + `.lead` + `.pull` |
| **Hero figure** | One diagram or chart fills most of the page; brief text beside or below it. | Frameworks, SWOT, org charts, flows, heat maps, Gantt charts | default `.page` + one big `.fig` |
| **Rail** | A narrow left rail with a vertical word in display type; a wide content column. | Table-led pages, legends, scope lists | `.page.railed` + `.rail > span` + `.railmain` |
| **Data spread** | Several charts and tables on a grid, with a formula or stat box. | Cost-benefit analysis, KPIs, numbers-heavy sections | default `.page` + `.g` columns |
| **Index** | References above, dark back-cover band below. | Last page | `.refs` + `.back` |

## Variation rules

1. **No two pages in a row share an archetype.** Two hero-figure pages in a row are allowed only when the figures differ in shape, for example a matrix then a flow diagram.
2. **Move the headline.** It can sit at the top (most pages), the bottom (the org chart page), inside a coloured panel (split pages), or inside a band (openers).
3. **Rotate the colour fields.** Use dark, blue, and yellow bands and panels across the issue, so no single colour dominates.
4. **Drop or change the running head on some pages.** Opener and panel-split pages have none.
5. **Close each page differently.** End on a pull quote, a stat row, a note row, a dark bottom band (`.band` with negative bottom margin), or a full table.
6. **Use the page for one idea.** If a page needs two big figures, split it into two pages.

## Fill rules: no dead space

Pages are fixed-height and hide overflow. Check every page in a render (`scripts/render-pages.sh`).

- **Under-filled (more than about 15% blank at the bottom):** add real content. Do not add decoration. Good fillers:
  - a pull quote of the page's key point
  - definitions of terms used on the page
  - an assumptions row
  - a "top three actions" row
  - a "how this connects" strip
  - a rating-scale table
- **Overflowing:** cut words first, then move a block to the next page, then shrink a figure. Never shrink type below the floor in `accessibility.md`.
- **Pin closing blocks to the bottom** with `margin-top:auto` (or `flex:1` on a band), so the page ends cleanly.

## Planning a full issue

A 16–20 page course paper usually becomes 24–30 pages at readable sizes. A typical flow:

```
Cover → Contents (split) → Summary (feature) → Editor's note/how to read (rail)
→ Part I opener (band) → profile (hero: vertical timeline) → model (hero: matrix)
→ units + process (icon rows + bottom band) → org chart (hero, headline at bottom)
→ data flow (hero) → access matrix (rail) → stakeholders (hero: rings + table)
→ competitors (data spread) → bid/accreditation (split, yellow) → SWOT (hero)
→ Part II opener (band, blue) → problems (feature list) → scope (rail)
→ costs (data spread) → benefits (data spread, stats first) → KPI tiles → KPI table + bottom band
→ heat map (hero) → risk register (table + top actions)
→ Part III opener (band, yellow) → future initiatives (card grid) → roadmap (hero: Gantt) → references (index)
```
