# Component catalog

All sizes use `calc(N*var(--u))`, where `--u` equals 1 px of an 816 × 1056 page. The starter file shows every component in context. Copy from there.

## Page frame

| Class | Use |
|---|---|
| `section.sheet > article.page` | One printed page. Flex column with a 20 u gap between direct children. |
| `.page.cover` | Cover variant. It has no padding and uses `.cv-top` (dark band) plus `.cv-bottom` (cover lines and credits). |
| `.rh` | Running head. Left: part name. Right: `.board` section label. |
| `.folio` | Footer with the running title and page number (`<b>`). |
| `.board` | Signboard label in the accent colour. Use it for section names, cover page numbers, and horizon labels. |

## Type

| Class | Use |
|---|---|
| `.kicker` | Small mono label with an accent dash above a headline. |
| `.h1` | Page headline, condensed display, 50 u. Keep it to two or three lines. |
| `.h2`, `.h3` | Subheads and card titles. |
| `.dek` | Italic deck under or beside the headline. |
| `.lead` | First paragraph with a display-face drop cap. |
| `.lab` | Uppercase mono label for legends, table labels, and small headings. |
| `.quote` | Pull quote with an accent quotation mark. |
| `.big-stat` | Giant condensed number. Use one per page at most. |
| `.small`, `.mute`, `.num` | Smaller text, muted colour, tabular figures. |

## Layout

| Class | Use |
|---|---|
| `.g` + `.c3`…`.c12` | 12-column grid. Spans must add up to 12 per row. |
| `.stack`, `.row` | Vertical or horizontal flex with a gap. |
| `.cols2` | Two text columns for long body copy. |

## Content blocks

| Class | Content shape | Notes |
|---|---|---|
| `.tl` | Dated milestones (a real sequence) | Six columns by default. Change `repeat(6,…)` for more or fewer. |
| `.flow > .step` | Numbered process | Chevron steps. Add `.skip` for a step that some cases skip. |
| `.units > .unit` | Five parallel categories with icons | Change the column count to match the number of items. |
| `.vals > .val` | Two-by-two icon list (values, principles) | |
| `.swot > .sw.s/.w/.o/.t` | SWOT grid | Each quadrant has its own fill. A large ghost letter sits in `.L`. |
| `.prob` | Lettered problem → evidence → response | Use it for justification sections. |
| `.layers > .layer` | Stacked layers (architecture layers, tiers) | |
| `.kpis > .kpi` | Three KPI tiles, each with a mini bullet or bar chart | |
| `.lanes > .lane(.pipe/.fut) > .card` | Status columns (current / pipeline / future) | The lane style shows status: solid, blue, or dashed. |
| `.cert` | Four-item checklist with icons | Use for compliance items and requirements. |
| `.org`, `.org-top`, `.bus`, `.org-cols`, `.ob` | Org chart | `.ob.lead-b` marks a leadership box. |
| `.toc` | Contents list drawn as a line of stops | |
| `.note` (`.warn`) | Icon callout | `.warn` turns the icon red. |
| `.tbl` | Data table | `.k` bolds a key cell. `.c` centres a cell. |
| `.dot.full/.view/.part`, `.appr`, `.dash` | Marks for access or coverage matrices | |
| `.tag.fund/.arch/.strat/.new` | Category tags | Rename the categories to fit the paper's framework. |
| `.fig` + `.cap` | Figure wrapper and numbered caption | |
| `.back` | Dark back-cover band at the bottom of the last page | |

## Placeholders

| Class | Meaning |
|---|---|
| `.tbd` | Missing fact that must be supplied. Renders with yellow stripes. |
| `.sample` | Badge for a chart that uses invented values. |
| `[brackets]` | Starter text that has not been replaced yet. |

## Icons (`#i-…`)

events, activ, comms, digital, prod, users, shield, db, bell, link, file, lock, chart, flag, clock, check, alert, chat, heart, eye, route, cloud, hdd, target, layers, cpu

## SVG colour classes

- Fills: `f-ink f-paper f-tint f-cob f-cobs f-sig f-sigs f-risk f-risks f-ok f-none`
- Strokes: `s-ink s-line s-mute s-cob s-sig s-risk s-paper`
- Text: `t-ink t-mute t-white t-cob t-risk`, plus `t-disp` for the display face
