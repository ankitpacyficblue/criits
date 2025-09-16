# CRIITS White Paper (v1.0)

This folder contains LaTeX sources for the **CRIITS** white paper (transaction-agnostic state machine).

## Compile (Linux/macOS)
```bash
cd criits-whitepaper-v1
pdflatex main.tex
bibtex main || true
pdflatex main.tex
pdflatex main.tex
```

If TikZ or listings packages are missing, install a full TeX distribution (e.g., TeX Live) or use Overleaf and upload the entire folder.

## Files
- `main.tex` — LaTeX source
- `references.bib` — (stub) references
- `figures/` — TikZ figures generated at compile time
- `sql/ddl.sql` — sample schema
- `spec/event.schema.json` — sample JSON schema for events
- `LICENSE.txt` — CC BY 4.0 license (content included)
- `VERSION` — version file

## License
Content is licensed under Creative Commons Attribution 4.0 (CC BY 4.0).
