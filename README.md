# cb-college-physics

A concept-book companion app for OpenStax *College Physics 2e* (CC BY 4.0) —
one domain per chapter (34 total), each with an interactive concept graph and
generated concept books.

Built on [concept-book-base](../concept-book-base). See `CLAUDE.md` for
architecture and the current scaffolding status — this repo is not yet
customized to be an OpenStax "companion" in the fuller sense (section deep
links, learning-objectives crosswalk, problem-set links); see the "Not yet
built" section in `CLAUDE.md`.

---

## Quick start

### 1. Frontend only (read-only — no book generation)

```bash
npm install
npm run dev
# open http://localhost:5174/cb-college-physics/
```

### 2. Full stack (frontend + book generation)

**Terminal 1 — backend** (requires the `spl123` conda env from SPL.py):

```bash
conda activate spl123
pip install -r requirements-api.txt
bash scripts/start-api.sh
# API running at http://localhost:8201
```

**Terminal 2 — frontend:**

```bash
npm install
npm run dev
```

---

## Content

`public/domains/college_physics_ch1` .. `ch34`, copied from `concept-book`'s
existing OpenStax ingestion. Every chapter's `catalog.json` entry attributes the
source (OpenStax, CC BY 4.0, link to openstax.org).

## Deployment (GitHub Pages)

```bash
npm run deploy      # vite build && gh-pages -d dist --no-history --dotfiles
```
