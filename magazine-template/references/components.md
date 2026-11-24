# Component catalog

All sizes use `calc(N*var(--u))`, where `--u` is 1px of an 816 × 1056 page. Every component appears in context in `assets/starter.html`.

## Page frames

| Class | Use |
|---|---|
| `section.sheet > article.page` | One page. Flex column with a 26u gap. Padding is 76u top, 56u sides, 88u bottom. |
| `.page.cover` with `.cv-top`, `.cv-bottom` | Cover |
| `.page.flush` + `.band` + `.partno` + `svg.route` | Opener band. Fill the current part's stop with `f-sig`. |
| `.page.split` + `.panel` + `.mainc` | Panel split. Set the folio to `style="left:calc(336*var(--u))"`. |
| `.page.side` + `.sidecol` + `.maincol` | Side column |
| `.band` inside a normal page, with a negative bottom margin | Dark bottom band. Use `.folio.inv` on that page. |
| `.rh` | Running head: the rubric section on the left, the topic on the right. This is the only label on the page. |
| `.folio` | Footer with the page number |

## Type (seven sizes)

| Class | Size | Face |
|---|---|---|
| `.h1.xl` | 72 | Serif 600 |
| `.h1` | 48 | Serif 600 |
| `.stat` | 44; set `--sz` to override, for example `style="--sz:36"` | Sans 700, tabular, no wrap |
| `.h2` | 24 | Serif 600 |
| `.dek` | 21 | Serif, muted |
| body | 17 | Serif |
| `.h3` | 16.5 | Sans 700 |
| `.tbl` | 15 | Sans |
| `.lab`, `.cap`, `.caps`, `.rh`, `.folio` | 13 | Sans 500/700 |

## Content blocks

| Class | Content |
|---|---|
| `.g` + `.c3`–`.c12` | 12-column grid |
| `.ruled` | 2px top rule. Use it as the default divider in place of boxes. |
| `.cols2`, `.lead`, `.pull` | Two-column body, drop cap, pull quote (two per issue at most) |
| `.vtl` | Vertical timeline |
| `.urow` | Name-and-description rows |
| `.flow > .step` (`.skip`) | Stages inside a dark band |
| `.org-top`, `.bus`, `.org-cols`, `.ob`, `.ob.lead-b` | Org chart |
| `.quad` | Four ruled quadrants |
| `.prob` | Lettered problem, evidence, fix |
| `.princ` | Numbered principles |
| `.chk` | Checklist row (`#i-check` or `#i-x`) |
| `.note` | The one boxed callout style |
| `.tag`, `.tag.fund`, `.tag.strat` | The one tag style: outline. Blue = fundamental, plain = architectural, dashed = strategic. |
| `.dot.full/.view/.part`, `.dash` | Matrix marks. Always print a key. |
| `.toc` | Contents |
| `.refs`, `.back` | References, back cover |
| `.tbd` | Placeholder text in brackets |

## SVG classes

- Fills: `f-ink f-paper f-tint f-cob f-cobs f-sig f-none`
- Strokes: `s-ink s-rule s-cob s-sig s-alert s-paper s-mute`
- Text: `t-ink t-mute t-white t-cob t-alert`, plus `t-serif` for serif labels
