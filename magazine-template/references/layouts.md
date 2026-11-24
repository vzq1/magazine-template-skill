# Page archetypes, variation, and clutter control

## Archetypes

| Archetype | How it looks | Best for | Classes |
|---|---|---|---|
| **Cover** | Dark top band with masthead, motif, and headline. Cover lines and credits below. | Page 1 | `.page.cover` |
| **Panel split** | Dark left panel (300u) holds the headline and a few stats. Content sits on the right. | Contents, single-topic pages | `.page.split` + `.panel` + `.mainc` |
| **Feature** | Headline, a ruled stats row, two-column body with a drop cap, and a closing note. | Summary, conclusion | default `.page` + `.cols2` + `.lead` |
| **Opener band** | Full-bleed dark band holding the part label, a 72u headline, a deck, and the motif line (the current part's stop filled). | First page of each part | `.page.flush` + `.band` |
| **Hero figure** | One diagram or chart fills most of the page. | Frameworks, core diagrams, data flows, org charts, heat maps, Gantt charts | default `.page` + `.fig` |
| **Side column** | Narrow left column (220u) holds the headline, deck, context, and key. A wide column holds the table. | Matrices, revision notes, scope, open items | `.page.side` + `.sidecol` + `.maincol` |
| **Quad** | Four ruled quadrants on white. | SWOT and other 2×2 lists | `.quad` |
| **Data spread** | Chart, table, and a ruled stats row. | Cost-benefit analysis, KPIs | `.g` columns |
| **Index** | References above, dark back band below. | Last printed page | `.refs` + `.back` |

## Variation rules

1. **No two pages in a row share an archetype.** Two hero pages in a row are acceptable only if the figures differ in shape.
2. **Move the headline sometimes.** It can sit at the bottom of the org chart page, in a side column, in a panel, or in a band.
3. **Close pages differently.** Use a ruled stats row, a two-column definitions row, a note, a dark bottom band, or a table.
4. **Give each page one focal element.** If a page needs two major figures, split it into two pages.

## Clutter: what reviewers flagged, and the rule that prevents it

| Clutter | Rule |
|---|---|
| Three faces and italic display on one page | Use the type system in SKILL.md. No italic or colour inside headlines. |
| About 50 font sizes | Allow seven sizes. Inline size overrides may only pick from that scale. |
| Three labels per page (running head, kicker, chip) all naming the section | Use one label: the running head, carrying the rubric number. No kicker or chip on the same page. |
| About 14 chip, label, and box styles | Use one tag style (outline; blue for fundamental, dashed for strategic), one note style (tint box), and rules for everything else. |
| Yellow given seven meanings | Each colour has one job. The brand colour appears only on the cover, contents, openers, and back cover. |
| Ghost numerals, giant letters, empty coloured slabs, clip-art icons | Delete them. Icons survive only where they carry meaning, such as a check or cross in a checklist. |
| Striped placeholders and sample charts | Use plain [brackets] plus the Open-items page. Do not chart invented data. |
| The same pull quote or tint-box footer on many pages | Use at most two pull quotes in the whole issue. Vary how pages close. |

## Fill rules

- **Under-filled pages** (more than about 15% blank) get real content, never decoration. Good fillers:
  - definitions of terms used on the page
  - what changes and what stays the same
  - a worked example from the source material
  - limitations
  - a review cycle
  - which initiative or page something connects to
  - stats from the content
- **Larger type** is the first fix for a thin page. It helps older readers too.
- **Overflowing pages:** cut words, then move a block to the next page, then shrink a figure. Never go below the size floor.
- **Pin closing rows to the bottom** with `margin-top:auto`, so empty space never sits at the foot of a page.
