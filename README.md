# CRIITS White Paper (v2.1)

This folder contains LaTeX sources for the **CRIITS** white paper with **horizontal, width-fitted diagrams** that do not overflow.

## Compile (Linux/macOS)
```bash
cd criits-whitepaper-v2_1
pdflatex main.tex
bibtex main || true
pdflatex main.tex
pdflatex main.tex
```

If TikZ or listings packages are missing, install a full TeX distribution (TeX Live) or use Overleaf and upload the entire folder.
