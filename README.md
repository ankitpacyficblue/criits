[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17132329.svg)](https://doi.org/10.5281/zenodo.17132329)

# CRIITS — Transaction-Agnostic State Machine

This repository hosts the white paper and reference artifacts for **CRIITS** (CR → I → I* → TS), a minimal lifecycle + operating convention for reliable end-to-end transaction processing across domains (payments, KYC, logistics, etc.).

## What’s inside
- `main.tex` — LaTeX white paper (title page shows the DOI and badge)
- `sql/ddl.sql` — minimal CRIITS schema
- `spec/event.schema.json` — JSON schema for events
- `references.bib` — references including the CRIITS citation
- `zenodo_badge.png` — Zenodo DOI badge (for PDF title page)
- `CITATION.cff` — citation metadata (enables “Cite this repository” on GitHub)

## Build the PDF
```bash
pdflatex main.tex
bibtex main || true
pdflatex main.tex
pdflatex main.tex
