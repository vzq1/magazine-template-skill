# magazine-template

A Claude Code skill that turns a paper or report into a print-ready, tech-magazine-style layout. It builds calm, Letter-size HTML pages and exports them to PDF. The pages use serif-magazine typography, layouts that vary from page to page, diagrams, charts, timelines, and tables. They are built to be readable by older readers, colour-blind readers, and in black-and-white print. The skill also includes a three-reviewer quality check.

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
| `magazine-template/assets/starter.html` | Page system and 12 starter pages, one per layout archetype, plus an open-items page |
| `magazine-template/references/layouts.md` | Page archetypes, variation rules, fill rules, and clutter rules |
| `magazine-template/references/accessibility.md` | Type-size floor, contrast, and colour-blind-safe colour rules |
| `magazine-template/references/review.md` | Three-reviewer check: layout auditor, subject professor, editorial designer |
| `magazine-template/references/components.md` | Catalog of component classes |
| `magazine-template/references/charts.md` | SVG chart recipes with scale formulas |
| `magazine-template/scripts/render-pages.sh` | Screenshots every page to check fit and empty space |
| `magazine-template/scripts/export-pdf.sh` | HTML to Letter PDF via headless Chrome |
