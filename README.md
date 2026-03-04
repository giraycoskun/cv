# ATS-Friendly LaTeX CV Templates

This project provides four CV variants:

- `cv_short.tex` (target: 1 page, no photo)
- `cv_long.tex` (target: up to 2 pages, no photo)
- `cv_short_photo.tex` (target: 1 page, with photo)
- `cv_long_photo.tex` (target: up to 2 pages, with photo)

## Edit your details

Update personal details and summary in `cv_data.tex`.

Optional photo:

- Put your image at `assets/profile.jpg` (or change `\PhotoPath` in `cv_data.tex`)

## Build

With `make` (recommended):

```bash
make all
```

This creates date-stamped PDFs (example for March 4, 2026):

- `cv_short_2026-03-04.pdf`
- `cv_long_2026-03-04.pdf`
- `cv_short_photo_2026-03-04.pdf`
- `cv_long_photo_2026-03-04.pdf`

Old/legacy CV PDFs are automatically removed before each build.

Single variants:

```bash
make short
make long
make short_photo
make long_photo
```

Cleanup:

```bash
make clean
make distclean
```

Optional custom date suffix:

```bash
make all DATE=2026-03-04
```

Note: the `Makefile` already prepends `/Library/TeX/texbin` (MacTeX default), so `make all` works even if TeX binaries are not in your shell PATH.

Use `pdflatex`:

```bash
pdflatex -interaction=nonstopmode -halt-on-error cv_short.tex
pdflatex -interaction=nonstopmode -halt-on-error cv_long.tex
pdflatex -interaction=nonstopmode -halt-on-error cv_short_photo.tex
pdflatex -interaction=nonstopmode -halt-on-error cv_long_photo.tex
```

If you prefer `latexmk`:

```bash
latexmk -pdf cv_short.tex
latexmk -pdf cv_long.tex
latexmk -pdf cv_short_photo.tex
latexmk -pdf cv_long_photo.tex
```
