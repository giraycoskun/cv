# AGENTS.md

This file provides persistent context for Codex agents working in this repository.

## Project Purpose

Maintain an ATS-friendly LaTeX CV with four variants:

- `cv_short.tex` (1 page, no photo)
- `cv_long.tex` (max 2 pages, no photo)
- `cv_short_photo.tex` (1 page, with photo)
- `cv_long_photo.tex` (max 2 pages, with photo)

All content is centralized in:

- `cv_data.tex` (profile/contact/summary)
- `cv_base.tex` (sections, layout, role targeting)

## Candidate Context

- Name: Giray Coskun
- Location: Munich, Germany
- Email: giray.coskun@tum.de
- LinkedIn: https://linkedin.com/in/giraycoskun
- GitHub: https://github.com/giraycoskun
- Portfolio: https://giraycoskun.com/work/

## Target Roles (Priority)

- Backend Developer
- Software Engineer
- DevOps Engineer
- Full-Stack Developer

When tailoring, prioritize backend + cloud + DevOps relevance first, then full-stack relevance.

## ATS Requirements

- Keep structure simple and machine-readable.
- Avoid tables, multi-column tricks for core text, icons as required content, and text inside images.
- Use clear section names: `Summary`, `Core Skills`, `Experience`, `Projects`, `Education`, `Publications`, `Certification`.
- Prefer standard keywords used in job descriptions.
- Keep bullets concise and impact-focused.
- Do not invent metrics or achievements; only use verified facts.

## Content Rules

- Preserve factual accuracy from confirmed sources:
  - Existing LaTeX files in this repo.
  - Prior CV at `/Users/giraycoskun/Downloads/main.tex` (if available).
  - Personal work page `https://giraycoskun.com/work/`.
- If conflicting dates/titles appear across sources, prefer latest confirmed personal site data unless user overrides.
- Keep date ranges consistent and explicit.

## Known Experience Snapshot

- DevOps Engineer, RedRose Technology (Sep 2023 -- Mar 2024)
- Cloud Consultant Intern, Skyloop (Jun 2022 -- Sep 2022)
- Backend Developer Intern, Migros E-commerce (Jun 2021 -- Sep 2021)
- Software Engineer Intern, Havelsan (Jun 2020 -- Sep 2020)
- MLOps Engineer Intern, Spiky AI (Feb 2020 -- Jun 2020)

## Known Education Snapshot

- M.Sc. Computer Science, Technical University of Munich (Sep 2024 -- Jun 2026 expected)
- B.Sc. Computer Science and Engineering, Sabanci University (Sep 2017 -- Jun 2023)
- Double Major in Economics, Minor in Mathematics
- GPA: 3.66/4

## Build and Validation

Use `make`:

- `make all` to build all variants
- `make short`, `make long`, `make short_photo`, `make long_photo`
- `make clean` and `make distclean`

Build behavior expectations:

- Successful compile should leave PDFs and clean LaTeX byproducts.
- Current `Makefile` prepends `/Library/TeX/texbin` for macOS MacTeX setups.

## Editing Guidance for Future Agents

- Default edits should happen in `cv_data.tex` and `cv_base.tex` only.
- Avoid duplicating content across the four variant entry files.
- Keep short versions one page and long versions at most two pages.
- Keep language direct, results-oriented, and recruiter-friendly.
- For job-specific customization, tune `Summary`, `Core Skills`, and `Target Keywords` first.
