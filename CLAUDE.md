# fpaolo.com — Maintenance Guide for Claude Code

This file is the complete operating manual for maintaining this website. Read it before making any changes.

---

## What this site is

Personal website for Fernando S. Paolo, PhD — Sr. ML Engineer & Research Scientist. Three pages: Home, Research, Media. Minimal design, zero build dependencies.

**Live at:** fpaolo.com (GitHub Pages, served from `docs/`)

---

## File map

```
docs/
├── styles.css              shared stylesheet — edit here for style changes
├── index.html              home page
├── research/
│   └── index.html          research projects
├── media/
│   └── index.html          press, podcasts, video
└── assets/
    └── img/                images (add new ones here)
```

To update the site: edit a file in `docs/` → `make deploy`.

No build step. No npm. No Sass. Claude edits the HTML/CSS directly.

---

## Design system

```
Fonts (Google Fonts, imported in styles.css):
  body text:    Lato, sans-serif
  h1, h2:       Playfair Display, serif
  h3:           Special Elite

Colors (CSS custom properties in styles.css):
  body text:    #333
  links:        #00a  (blue)
  h3 accent:    #C02F1D  (brick red)
  background:   #fff

Layout:
  max-width:    42rem, centered
  padding:      2rem on .content and .footer
  body font:    20px, line-height 1.25
  heading font: 36px
```

---

## HTML page template

Every page is a standalone HTML file — no templating engine. Copy this for new pages:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fernando Paolo</title>
  <link rel="stylesheet" href="/styles.css">
</head>
<body>
  <div class="content">

    <!-- page content here -->

  </div>
  <nav class="nav">
    <a href="/research">/Research</a><br>
    <a href="/media">/Media</a><br>
    <a href="/">/Home</a>
  </nav>
</body>
</html>
```

---

## Research page — adding an entry

Each entry is an image linked to a paper/project, with a one-liner description. Add new entries at the **top** (most recent first).

```html
<a class="project" href="PAPER_OR_PROJECT_URL">
  <img src="/assets/img/IMAGE_FILENAME.png" alt="Brief description">
  <p>One sentence describing what the work found or does.</p>
</a>
```

Rules:
- The image and the text are both part of the same link
- One sentence only — the image carries the visual weight
- Link goes directly to the paper DOI, journal page, or project site
- Add the image file to `docs/assets/img/` first

---

## Media page — adding an entry

Flat chronological list, newest first. Format for a standard press entry:

```html
<p><strong>Outlet (Year):</strong> <a href="URL">Article title</a></p>
```

For podcasts or video, add the medium inline:

```html
<p><strong>NPR (2024):</strong> <a href="URL">Episode title</a> <em>(podcast)</em></p>
<p><strong>Carbon Brief (2018):</strong> <a href="URL">Video title</a> <em>(video)</em></p>
```

Use `<hr>` to separate clusters of entries by era or paper.

Add new entries at the **top of the file**, before the first `<hr>`.

---

## Preview locally

```bash
make preview
```

Opens a local server at `http://localhost:8080` using Python's built-in HTTP server (no install needed). Uses the same absolute paths (`/styles.css`, `/assets/img/...`) as the live site. Ctrl-C to stop.

## Deploy

```bash
make deploy
```

This runs:
```bash
git add docs/ CLAUDE.md AGENTS.md Makefile
git commit -m 'Update website'
git push
```

GitHub Pages picks up the change within ~60 seconds.

---

## Principles — what NOT to do

- Don't add a build tool, npm package, or framework of any kind
- Don't add a fourth page without a compelling reason and without removing something else
- Don't add JavaScript unless there is a specific, concrete interactive need
- Don't use inline styles — all CSS lives in `docs/styles.css`
- Don't change the fonts or color palette without Fernando's agreement
- Keep the footer nav exactly as-is: Research | Media | Home
- Keep entries concise: research = one sentence, media = title only
