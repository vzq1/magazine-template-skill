# Readability and colour for every reader

Design for three readers at once: one with weaker eyesight (for example an older professor), one who is colour-blind, and one holding a black-and-white printout.

## Size floor (1u = 0.75pt on Letter)

| Text | Size |
|---|---|
| Body | 17u (12.75pt) |
| Deck | 21u |
| Tables | 15u; 16.5–17u on table-led pages |
| Captions, labels, chart text, folios | 13u minimum (9.75pt) |
| Headlines | 48u (72u on openers) |

- **SVG text sizes are only true when the viewBox width equals the rendered width in u.** Full width is 704, c8 is 443, c7 is 402, c6 is 342, and c5 is 282.
- **Shrinking type to fit is never allowed.** Cut words or add a page instead.
- **Bodoni Moda and other high-contrast didones are for the masthead only.** Their hairlines break up at smaller sizes.
- **Avoid hard-to-read styling:** no light weights, no all-caps body text, and no long italic passages.

## Contrast

- **Body text:** 7:1 or higher. Ink `#15171C` and muted `#4D5562` both pass on white.
- **Yellow:** use it only as a fill or line. Never set yellow text on white.

## Colour that does not rely on colour vision

- **One accent per body page:** blue `#1B42C4` for data. The brand colour appears only where the motif does.
- **Every colour difference has a second cue:**
  - a word (label values and cells directly, for example "below cost")
  - fill versus outline
  - solid versus dashed
  - marker shape
  - a check or cross icon
- **No red against green.** Orange `#B4470C` is the alert colour, and it appears only on risk or over-cost items.
- **Heat maps use two tones:** tint for low and blue-soft for the high zone. Filled versus outlined markers show priority.

## Palette and jobs

| Token | Hex | Job |
|---|---|---|
| `--ink` | `#15171C` | Text, dark panels, primary marks |
| `--muted` | `#4D5562` | Secondary text |
| `--rule` | `#D5D9E0` | Rules only |
| `--tint` | `#F3F4F6` | Note boxes and chart fields; the only fill |
| `--cobalt` / `--cobalt-soft` | `#1B42C4` / `#DCE3F8` | Data, fundamental category, high zone |
| `--signal` | `#FFC20E` | Brand motif: cover, contents, openers, back cover |
| `--alert` | `#B4470C` | Risk and over-cost only |
