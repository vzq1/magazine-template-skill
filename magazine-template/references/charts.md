# Chart recipes

Charts are inline SVG. Each one follows three rules:

1. **Set the `viewBox` width to the rendered width in `u`.** Full width = 704, c8 = 443, c7 = 402, c6 = 342, c5 = 282, c4 = 241. One viewBox unit then equals 1u, so `font-size="12"` really is 12u (9pt).
2. **Chart text is at least 13u.** Axis titles and series labels are 13–15u at weight 700.
3. **One linear scale per axis.** `pos = start + (value − min) × length / (max − min)`. Every tick label names a value the scale reaches.

For accessibility, label series directly on the chart instead of only in a legend. Give each series a second cue besides colour: a fill versus an outline, a dash pattern, a marker shape, or a word.

## Range or horizontal bars (`viewBox 0 0 704 300`)

- The label column is x 0–220: the name at 15u bold, a sub-label at 12.5u. The plot runs from x 240 to 680 (440 units).
- `x(v) = 240 + v × 440 / max`. Width is `x(high) − x(low)`. Rows are 50 apart and bars are 28 high.
- Put the value label just after the bar. Put it inside the bar in white when it would run past x 690.
- Worked example with `max = 5000`: `x(2804) = 486.8` and `x(4205) = 610.0`.

## Cost versus benefit bars (`viewBox 0 0 704 160`)

- Labels are x 0–140 and the bars start at x 150. Scale: `w = v × 540 / max`.

## Line chart with a band (`viewBox 0 0 443 260`)

- The x positions are evenly spaced. `y(v) = bottom − (v − vmin) × height / (vmax − vmin)`.
- Draw the band as a `polygon`: along the upper series left to right, then back along the lower series.
- Series cues: solid line with circle markers versus dashed line with square markers. Do not fill between the lines.
- End plot x at about 345 and put the labels to the right of the last point (x ≈ 354).
- Compounding: `100 × (1 + r)^n`.

## Donut (`viewBox 0 0 42 42`)

- With `r = 15.915` the circumference is 100. Set `stroke-dasharray="p 100−p"` and `stroke-dashoffset = 25 − (sum of earlier segments)`.
- Prefer the table alone. A donut that repeats the table beside it is clutter.

## 2×2 matrix (`viewBox 0 0 402 380`)

- The plot is x 60–392 and y 6–326. Each quadrant is 166 × 160.
- Quadrant title: 19u display. Gloss: two lines at 12.5u, each at most about 18 characters.

## Heat map (`viewBox 0 0 402 400`)

- Cells are 104 × 110, starting at (80, 10). Columns run low → high likelihood. Rows run high → low impact.
- Use two tones: `f-tint` everywhere, and `f-cobs` for the high zone (score L × I of 6 or more).
- Markers have r = 18 and 13.5u labels. Filled ink means priority. White with an outline means the rest.
- Put the rating definitions in a table under the map, not inside the cells.

## Gantt chart (`viewBox 0 0 704 H`)

- Label column x 0–230 at 13.5u. Quarter `q` starts at `x = 240 + 38q`, so 12 quarters fit across.
- A bar from quarter `a` to quarter `b` uses `x = 242 + 38a` and `w = 38(b − a + 1) − 4`.
- Row `i`: the bar is at `y = 88 + 34i` with height 20, and the label at `y = 102 + 34i`.
- Header: horizon band (y 0–76) with SHORT/MEDIUM/LONG at 12.5u, years at 17u display, quarters at 12u.
- Category cues use no extra colours: white with an outline (architectural), solid blue (fundamental), white with a dashed outline (strategic), pale blue (recurring or decision work).
- Milestones are diamonds on their own row, labelled at 12.5u.

## Stakeholder rings (`viewBox 0 0 342 342`)

- Centre at (171, 171), with radii 168, 110, and 52.
- Labels must fit their ring band. Split a long label onto two lines rather than shrink it.

## Flow diagram (`viewBox 0 0 704 456`)

- Zones: shaded columns, each with a 12.5u caps label.
- Nodes: boxes about 210 × 124 with a 21u display title and up to three 13u lines of about 22 characters each.
- Arrows: 2 stroke with marker heads. Use dashed alert-orange only for a manual or problem flow, and label it on a white backing box.

## Never

- Do not chart sample or invented values. Leave the chart out until the data exists.
- Do not put decorative fills behind lines, or legends where a direct label would fit.
