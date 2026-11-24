# magazine-template

A Claude Code skill that turns a paper or report into a real magazine edition. Pages are Letter-size HTML, shown as spreads on screen and exported to PDF. The output has magazine-density typography, illustrated openers, sidebars, pull quotes, infographics, and charts, and stays readable in print and for colour-blind readers. A three-reviewer quality check is included.

## Install

Clone the repo, then copy the skill folder into your personal skills directory:

```bash
git clone https://github.com/vzq1/magazine-template-skill.git
mkdir -p ~/.claude/skills
cp -r magazine-template-skill/magazine-template ~/.claude/skills/
```

To use it in a single project only, copy the folder to `.claude/skills/` inside that project.

## Use

Start Claude Code and ask for what you need. For example:

- "Make a magazine-style version of our paper. Here's the draft and the professor's comments."
- "Fill our magazine template with the final content from this document."

You can also invoke the skill directly with `/magazine-template`.

## Requirements

Rendering and exporting need Google Chrome, Chromium, or Microsoft Edge installed.

To update to the latest version, run `git pull` in the cloned folder and copy the `magazine-template` folder into `~/.claude/skills/` again.

## Contents

| Path | What it is |
|---|---|
| `magazine-template/SKILL.md` | The workflow Claude follows |
| `magazine-template/assets/starter.html` | Page system, generated art, and 7 starter magazine pages |
| `magazine-template/scripts/city_art.py` | Generates the transit-map illustration for the cover and openers |
| `magazine-template/references/layouts.md` | Page archetypes, variation rules, fill rules, and clutter rules |
| `magazine-template/references/accessibility.md` | Type-size floor, contrast, and colour-blind-safe colour rules |
| `magazine-template/references/review.md` | Three-reviewer check: layout auditor, subject professor, editorial designer |
| `magazine-template/references/components.md` | Catalog of component classes |
| `magazine-template/references/charts.md` | SVG chart recipes with scale formulas |
| `magazine-template/scripts/render-pages.sh` | Screenshots every page to check fit and empty space |
| `magazine-template/scripts/export-pdf.sh` | HTML to Letter PDF via headless Chrome |
