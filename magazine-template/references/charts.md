# Chart recipes

Charts are hand-written inline SVG. Each one has a fixed `viewBox`, so it scales with the page. Before placing marks, define one linear scale per axis. Every tick label must name a value the scale actually reaches.

A linear scale maps a value to a position: `pos = start + (value − min) × (length ÷ (max − min))`.

## Horizontal bars and range bars (`viewBox 0 0 400 190`)

- The label column is x 0–130. The plot runs from x 140 to 390, which is 250 units wide.
- Scale for 0 to `max`: `x(v) = 140 + v × 250 / max`.
- For a range bar, use `x = x(low)` and `width = x(high) − x(low)`.
- Rows sit 30 units apart. Bars are 14 high.
- Gridlines and ticks go at every `max / 5`.

Worked example with `max = 5000`: `x(2804) = 280.2` and `x(4205) = 350.25`, so `width = 70.05`.

## Line chart with a range band (`viewBox 0 0 470 180`)

- X positions are evenly spaced, for example 60, 190, 320, 450.
- Y scale: `y(v) = bottom − (v − vmin) × (height / (vmax − vmin))`.
- The band is a `polygon` that runs along the upper series left to right, then back along the lower series right to left.
- Compounding: `index_n = 100 × (1 + r)^n`. For example, at r = 0.2 the index runs 100, 120, 144, 172.8.

## Donut (`viewBox 0 0 42 42`)

- Use `r = 15.915`. The circumference is then 100, so dash lengths equal percentages.
- Draw each segment as its own `circle` with `stroke-dasharray="p (100−p)"`.
- Set `stroke-dashoffset` to `25 − (sum of the earlier segments)`. The first segment uses 25, which starts it at 12 o'clock.
- The segments must add up to 100.

## 2×2 matrix (`viewBox 0 0 340 300`)

- The plot area is x 50–330 and y 10–260. Each quadrant is 140 × 125.
- Tint the quadrant the subject sits in with `f-sigs`, and place a marker circle there.
- Quadrant glosses must fit in 130 units: about 28 characters at font-size 8.

## Heat map (`viewBox 0 0 330 290`)

- Cells are 86.7 × 80, starting at (60, 10). Columns run low → high likelihood. Rows run high → low impact.
- Colour cells by likelihood × impact, scoring L = 1, M = 2, H = 3:
  - `f-ok` for a score of 1–2
  - `f-sigs` for 3–4
  - `f-risks` for 6–9
- Place risk markers inside their cell. Use filled markers for the priority zone.

## Gantt chart (`viewBox 0 0 704 H`)

- The label column is x 0–220. Quarter `q` (0-based) starts at `x = 228 + 39q`, so 12 quarters fit across.
- A bar from quarter `a` to quarter `b` (inclusive) uses `x = 230 + 39a` and `width = 39(b − a + 1) − 4`.
- Row `i` has its label at `y = 84 + 28i` and its bar at `y = 72 + 28i`, 16 units high.
- Horizon bands (short, medium, long) are tinted rectangles behind the year header.
- Milestones are diamonds on their own row under the bars.

## Mini charts in KPI tiles (`viewBox 0 0 200 26`)

- **Bullet chart.** A track rectangle, a target band, and tick lines at the band edges. Add an actual-value bar when the data exists.
- **Trend bars.** Small columns, with the latest one in `f-cob`.

## Sensitivity table

Make it an HTML `.tbl`, not SVG. Shade the cells that fall below the cost with `--risk-soft`, and the base case with `--signal-soft`. State the formula in the caption.
