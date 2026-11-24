# Magazine anatomy, archetypes, and clutter control

## Anatomy: what makes it read as a magazine

| Element | Treatment |
|---|---|
| Running head | 11u caps, tracked. Section label on the outside edge, mirrored on left and right pages. |
| Folio | Page number on the outer corner, plus the magazine name. |
| Kicker | 11.5u caps in the accent colour, carrying the rubric section ("III.3 · Cost-benefit analysis"). |
| Headline | Serif 700 with tight leading. It states the finding. |
| Standfirst | 18u serif in muted grey, one or two sentences, set beside or under the headline. |
| Byline | On openers: "By [authors]". |
| Body | Three justified, hyphenated columns at 13.5u. Drop cap on the first paragraph, indented paragraphs, crossheads, and an end mark on the last paragraph. |
| Pull quote | 23–28u serif between rules, breaking the columns. Two to four per issue. |
| Sidebar or boxout | Tinted box with a small caps title: "Explainer", "From the interview" (Q&A), "Limitations", "Top three actions". Left-aligned text. |
| Captions | 11.5u sans. "Fig. n" in bold, then what the figure shows and its source. |
| Front matter | Cover with cover lines, contents with masthead (contributors), editor's letter, letters page, "By the numbers". |
| Back matter | Last word (conclusion), references, back cover. |

## Archetypes

| Archetype | Use |
|---|---|
| **Cover** (`.bleed` + art) | Masthead, cover lines in plates, headline plate. |
| **Contents + masthead** | Numbered story list with an art thumbnail and a contributor box. |
| **Feature** | Kicker, headline, standfirst, three-column body with pull quote and sidebar, closing stats or a timeline. |
| **By the numbers** | Grid of feature numbers with one-line context, plus an icon array. |
| **Bleed opener** | Full-page art with a headline plate and byline. A variant puts the art in the top half with text below. |
| **Hero figure** | One diagram fills the page; the standfirst explains it. |
| **Table + sidebar** | A table or matrix with a Q&A or explainer box beside it. |
| **Dark band** | Light top, ink band at the bottom holding a process or route diagram. |
| **Data spread** | Formula box, chart, table, and stats. |
| **Quad + table** | SWOT quadrants with large initial letters, then a TOWS table. |

## Variation rules

1. No two pages in a row share an archetype.
2. Alternate image-heavy and text-heavy pages. A spread should pair a visual page with a reading page.
3. Rotate how pages close: stats row, timeline, pull quote, table, or dark band.
4. Each page has one focal element.

## Clutter rules

| Clutter | Rule |
|---|---|
| Several typefaces, italic headlines, coloured words | Use the type system in SKILL.md. Headlines are roman ink. |
| Many sizes | Pick from the scale only. |
| Multiple labels naming the same section | One kicker plus one running head. No chips. |
| Many chip and box styles | One tag style, one box style, and rules for everything else. |
| One colour given many meanings | The brand colour appears only in the motif. Blue is for data. Orange is for risk only. |
| Decorative ghost numerals, empty slabs, clip-art | Remove them. Icons appear only where they identify something (unit icons, checks). |
| Striped placeholders, sample charts | Use plain [brackets] and the Open-items page. |
| Oversized slide-like text | Use magazine density: 10pt body in columns. Large type is for headlines and feature numbers only. |

## Fill rules

- A thin page gets real content: a sidebar explainer, a pull quote from the text, a Q&A, an assumptions or limitations box, a worked example, or a timeline.
- An overflowing page loses words first, then moves a block, then shrinks a figure.
- Pin closing elements with `margin-top:auto`.
