# Component catalog

All sizes use `calc(N*var(--u))`, where `--u` is 1px of an 816 × 1056 page. Every component appears in context in `assets/starter.html`. Copy from there.

## Fonts

| Token | Face | Use |
|---|---|---|
| `--display` | Bodoni Moda | Headlines, big numbers, pull quotes, folio numbers. 19u and up only. |
| `--sans` | Libre Franklin | Kickers, labels, captions, tables, chart text, card titles |
| `--serif` | Source Serif 4 | Body text, decks, notes |

## Page frames (archetypes; see layouts.md)

| Class | Use |
|---|---|
| `section.sheet > article.page` | One page. Flex column with a 22u gap. |
| `.page.cover` with `.cv-top`, `.cv-bottom` | Cover |
| `.page.flush` + `.band` (`.cob`, `.sig`) + `.ghost` + `.partno` | Opener band |
| `.page.split` + `.panel` (`.sig`) + `.mainc` | Panel split. Position the folio with `style="left:calc(336*var(--u))"`. |
| `.page.railed` + `.rail > span` + `.railmain` | Rail. Position the folio with `style="left:calc(180*var(--u))"`. |
| `.band` with negative bottom margin inside a normal page | Dark bottom band. Use `.folio.inv` on that page. |
| `.rh` | Running head. Leave it out on openers and split pages. |
| `.folio`, `.folio.inv` | Footer with a 24u page number |
| `.board` | Signboard label: section names and page references |

## Type

| Class | Size | Use |
|---|---|---|
| `.h1` | 58u | Page headline. `<em>` gives italic blue emphasis. |
| `.h1.xl` | 92u | Opener and panel headlines |
| `.h2` | 28u | Subheads |
| `.h3` | 16.5u sans | Card and list titles |
| `.kicker` | 12.5u sans caps | Label above a headline |
| `.dek` | 19u italic serif | Deck |
| `.lead` | body + drop cap | First paragraph |
| `.pull` | 26u italic display | Pull quote with a yellow rule |
| `.stat`, `.big-stat` | 46u, 150u | Numbers |
| `.lab` | 12u sans caps | Labels |
| `.small` | 13.5u | Secondary text. Never smaller. |

## Content blocks

| Class | Content shape |
|---|---|
| `.g` + `.c3`–`.c12` | 12-column grid |
| `.cols2` | Two-column body text |
| `.vtl` | Vertical timeline (dated milestones) |
| `.urow` | Icon rows for parallel categories |
| `.flow > .step > .chev + p` | Numbered process (place inside a dark `.band`). Add `.skip` for an exception step. |
| `.vals > .val` | Icon tiles (values, principles) |
| `.swot > .sw.s/.w/.o/.t` | SWOT grid that fills the page |
| `.prob` | Lettered problem, evidence, and fix |
| `.layer` | Stacked architecture layers |
| `.kpis > .kpi` | 2 × 2 KPI tiles with mini charts |
| `.card`, `.card.pipe`, `.card.fut` | Status cards. The border style shows status: thin, blue, or dashed. |
| `.chk` | Checklist row with an icon (check `#i-check` or cross `#i-x`) |
| `.org-top`, `.bus`, `.org-cols`, `.ob`, `.ob.lead-b` | Org chart |
| `.toc` | Contents drawn as route stops |
| `.note`, `.note.warn` | Icon callout |
| `.swatch` | Legend row for "How to read this issue" |
| `.tbl`, `.tbl.big` | Tables (13.5u or 14.5u). `.k` bolds a cell. `.c` centres it. |
| `.dot.full/.view/.part`, `.appr`, `.dash` | Marks for matrices. Always add a legend. |
| `.tag.fund/.arch/.strat/.new` | Category tags. Each differs in fill and outline as well as colour. |
| `.fig` + `.cap` | Figure and numbered caption |
| `.refs`, `.back` | References and back cover |

## Placeholders

- `.tbd`: missing fact, shown with stripes and a dashed outline
- `.sample`: chart uses invented values
- `[brackets]`: starter text not yet replaced

## Icons (`#i-…`)

events, activ, comms, digital, prod, users, shield, db, bell, link, lock, flag, clock, check, x, alert, heart, eye, hdd, layers, cpu, target

## SVG classes

- Fills: `f-ink f-paper f-tint f-cob f-cobs f-sig f-sigs f-or f-ors f-teal f-none f-h1 f-h2 f-h3 f-h4`
- Strokes: `s-ink s-line s-cob s-sig s-or s-paper`
- Text: `t-ink t-mute t-white t-cob t-or`, plus `t-disp` for the display face
