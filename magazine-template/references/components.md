# Component catalog

All sizes use `calc(N*var(--u))`, where `--u` is 1px of an 816 × 1056 page. Every component appears in context in `assets/starter.html`.

## Structure

| Class | Use |
|---|---|
| `.book` | Wraps all sheets. On screens 1180px wide or more, pages sit in two-page spreads and the cover lands on the right. |
| `section.sheet > article.page.odd/.even` | One page. `odd` is a right-hand page, `even` a left-hand one. Running heads and folios mirror. |
| `.page.bleed` + `svg.art` + `.overlay` + `.plate` | Full-bleed art page with text on solid ink plates |
| `.rh`, `.folio`, `.folio.inv` | Running head and folio |

## Type

| Class | Use |
|---|---|
| `.kick` | Kicker: section number and name |
| `.hed`, `.hed.xl`, `.hed.l`, `.hed.m`, `.hed.s` | Headlines: 58, 92, 70, 40, 26 |
| `.dek` | Standfirst |
| `.by` | Byline |
| `.cols3.txt`, `.cols2.txt` | Justified, hyphenated columns |
| `.drop` | Drop cap |
| `.sub` | Crosshead inside the text |
| `.pq` + `cite` | Pull quote |
| `.end` | End mark on the last paragraph |
| `.cap` | Caption |
| `.lab` | Label |
| `.stat`, `.big` | Numbers. Set `--sz` for the size. They never wrap. |

## Blocks

| Class | Use |
|---|---|
| `.box`, `.box.ink`, `.box.qa` (`.q`, `.a`) | Sidebar, dark sidebar, Q&A |
| `.toc .e`, `.toc .part` | Contents entries |
| `.num-tile` | By-the-numbers tile |
| `.coverline`, `.mast` | Cover lines, masthead |
| `.ob`, `.ob.lead-b`, `.orgcol` | Org chart |
| `.princ` | Numbered principles, on a dark page |
| `.tbl` (`.k`, `.c`, `.r`), `.tbd` | Tables, placeholders |
| `.tag`, `.tag.fund`, `.tag.strat` | Category tags (outline only) |
| `.dot.full/.view/.part` | Matrix marks |
| `.g` + `.c2`–`.c12`, `.ruled`, `.hair` | Grid and rules |
| `.refs` | References |

## SVG

- Fills: `f-ink f-paper f-tint f-cob f-cobs f-sig f-rule f-none`
- Strokes: `s-ink s-rule s-cob s-sig s-alert s-paper s-mute`
- Text: `t-ink t-mute t-white t-cob t-alert t-serif`
- Symbols: unit icons (`i-events`, `i-activ`, `i-comms`, `i-digital`, `i-prod`), `i-check`, `i-x`, and `person` for icon arrays.
