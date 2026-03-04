# ATS CV build targets
# Works with TeX binaries in PATH or in /Library/TeX/texbin (macOS MacTeX).

SHELL := /bin/zsh

TEXBIN := /Library/TeX/texbin
PATH := $(TEXBIN):$(PATH)
LATEXMK := $(shell command -v latexmk 2>/dev/null)
ifeq ($(LATEXMK),)
LATEXMK := $(TEXBIN)/latexmk
endif

DATE ?= $(shell date +%F)
CVS := cv_short cv_long cv_short_photo cv_long_photo
PDFS := $(addsuffix _$(DATE).pdf,$(CVS))
BASE_PDFS := $(addsuffix .pdf,$(CVS))

.PHONY: all short long short_photo long_photo clean distclean check-latexmk

all: check-latexmk $(PDFS)

short: check-latexmk cv_short_$(DATE).pdf

long: check-latexmk cv_long_$(DATE).pdf

short_photo: check-latexmk cv_short_photo_$(DATE).pdf

long_photo: check-latexmk cv_long_photo_$(DATE).pdf

%_$(DATE).pdf: %.tex cv_base.tex cv_data.tex
	"$(LATEXMK)" -pdf -interaction=nonstopmode -halt-on-error "$<" && \
	cp -f "$*.pdf" "$@" && \
	"$(LATEXMK)" -c "$<"

check-latexmk:
	@if [[ ! -x "$(LATEXMK)" ]]; then \
		echo "latexmk not found."; \
		echo "Expected in PATH or at $(TEXBIN)/latexmk"; \
		echo "On macOS with MacTeX, run: export PATH=\"/Library/TeX/texbin:$$PATH\""; \
		exit 1; \
	fi

clean:
	@if [[ -x "$(LATEXMK)" ]]; then \
		"$(LATEXMK)" -c $(addsuffix .tex,$(CVS)); \
	else \
		rm -f *.aux *.fdb_latexmk *.fls *.log *.out *.synctex.gz; \
	fi

distclean: clean
	rm -f $(BASE_PDFS)
	rm -f cv_short_*.pdf cv_long_*.pdf cv_short_photo_*.pdf cv_long_photo_*.pdf
