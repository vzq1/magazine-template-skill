# Readability and colour for every reader

Assume at least one reader has weaker eyesight (an older professor, for example), one is colour-blind, and one reads a black-and-white printout. A page passes only if all three can read it.

## Type size floor

`u` is one CSS pixel of the 816-wide page. At Letter size, 1u = 0.75pt.

| Text | Minimum | Starter value |
|---|---|---|
| Body copy | 15u (11.25 pt) | 15u |
| Table cells, card text, notes | 13.5u (10 pt) | 13.5–14.5u |
| Labels, captions, chart text, folios | 12u (9 pt) | 12–13u |
| Headlines | 44u | 58u (feature), 92u (opener) |

- **Never go smaller to make content fit.** Cut words, split the page, or move content to the next page.
- **SVG text scales with the chart.** Set the `viewBox` width equal to the rendered width in `u` (full width = 704, c7 = 402, c6 = 342, c5 = 282, c4 = 241) so that `font-size="12"` really is 12u. A chart drawn in a 400-wide viewBox but shown 280 wide shrinks every label by 30%.
- **Line length:** 40–75 characters. Use two columns (`.cols2`) for long body text across the full width.
- **Line height:** 1.4–1.5 for body text, 1.0–1.1 for display headlines.
- **Reading fonts:** body text in a sturdy serif with a large x-height (Source Serif 4). Labels and data in a clear sans (Libre Franklin). The high-contrast display face (Bodoni Moda) is for headlines and big numbers only. Its hairlines vanish at small sizes, so never use it below 19u.
- **Avoid hard-to-read styles:** no light weights (below 400), no all-caps body text, and no long italic passages. Italic is for decks, pull quotes, and short emphasis.

## Contrast

- **Body text:** at least 7:1 against its background (WCAG AAA). In the starter, ink `#15171C` on white is about 18:1 and muted `#444B57` on white is about 9:1.
- **Large text (24u and up) and icons:** at least 4.5:1.
- **Grey:** use no grey lighter than `--muted` for any text. Pale grey (`--line`) is for rules only.
- **Yellow (`--signal`):** it is a fill. Put ink text on it, never yellow text on white.
- **Text on photos or patterns:** place it on a solid panel.

## Colour that works for colour-blind readers and in print

- **Give each colour one job.** Keep the meanings the same on every page, and print a key on the "How to read this issue" page.
- **Never use colour as the only cue.** Pair every colour difference with a second one:
  - a word: label bars and cells directly ("below cost", "High")
  - a shape: filled versus outlined markers, circles versus squares
  - a line style: solid versus dashed
  - an icon: check versus cross
  - an outline thickness: thin versus thick border
- **Avoid red against green.** It is the most common colour-blind confusion. Use blue against orange for good versus bad, and teal against orange when a third hue is needed.
- **Use one hue for ordered scales.** For heat maps and intensity, use a single hue from light to dark (the starter's `--h1` to `--h4` run pale yellow to dark orange), and print the score number in each cell.
- **Check the series in grayscale.** Series that sit next to each other need clearly different lightness: yellow (light), blue (mid-dark), ink (darkest), and white with a thick outline.
- **Make lines distinct.** In line charts, give each series its own dash pattern and point marker as well as its own colour.

## Starter palette and jobs

| Token | Hex | Job |
|---|---|---|
| `--ink` | `#15171C` | Text, dark panels, priority markers |
| `--muted` | `#444B57` | Secondary text (9:1 on white) |
| `--cobalt` | `#1B42C4` | Data series 1, links, fundamental category |
| `--signal` | `#FFC20E` | Section signboards, architectural category (fill only) |
| `--orange` | `#B4470C` | Risks, problems, "below cost" |
| `--teal` | `#0D6B61` | Wins and passed checks (always with an icon) |
| `--h1`…`--h4` | yellow → dark orange | Ordered intensity scale |

When you change the palette for a new subject:
1. Keep the jobs the same.
2. Re-check the contrast of each new colour.
3. Re-check that the series still read in grayscale.

## Layout for low vision

- One main idea per page. A large headline states it.
- Generous spacing between groups. No text set closer than 8u to an edge or rule.
- Readers find page numbers easily: the folio number is 24u.
- Tables use thick header rules, row dividers, and a bold first column.
