# Location of code samples to be converted to pdf
CODE_DIR=code

# Location of svg figures
FIGS_DIR=figs

CODE_FILES:=$(wildcard $(CODE_DIR)/*.c $(CODE_DIR)/*.lua)
CODE_FILES_PDF:=$(patsubst %.c,%.pdf,$(patsubst %.lua,%.pdf,$(CODE_FILES)))

FIGS_FILES:=$(wildcard $(FIGS_DIR)/*.svg)
FIGS_FILES_PDF:=$(FIGS_FILES:%.svg=%.pdf)
FIGS_FILES_PNG:=$(FIGS_FILES:%.svg=%.png)

FILE=RDSL

#.SECONDARY:

all: $(FILE).pdf

$(FILE).pdf: $(FILE).tex $(FIGS_FILES_PDF) $(FIGS_FILES_PNG) $(CODE_FILES_PDF)
	@echo "LATEXMK             $@"
	@latexmk -silent -pdf $< 2> /dev/null

%.svg: %.lua
	@echo "LUA->SVG            $@"
	@pygmentize -f svg -Ostyle=manni $< > $@
	@inkscape --verb=FitCanvasToDrawing --verb FileSave --verb FileClose $@

%.svg: %.c
	@echo "C->SVG              $@"
	@pygmentize -f svg -Ostyle=manni $< > $@
	@inkscape --verb=FitCanvasToDrawing --verb FileSave --verb FileClose $@

%.pdf: %.svg
	@echo "SVG->PDF            $@"
	@inkscape --export-pdf=$@ $<

%.png: %.svg
	@echo "SVG->PNG            $@"
	@inkscape --export-png=$@ $<

debug: $(FILE).tex $(FIGS_FILES_PDF) $(FIGS_FILES_PNG) $(CODE_FILES_PDF)
	@echo "LATEXMK             $@"
	@latexmk -pdf $<

clean:
	rm -rf *.pdf *.aux *.log *.nav *.out *.snm *.toc auto core *.fdb_latexmk 

imgclean:
	rm -f $(CODE_FILES_PDF) $(FIGS_FILES_PDF) $(FIGS_FILES_PNG)

realclean:
	make clean
	make imgclean
	rm -f *~
