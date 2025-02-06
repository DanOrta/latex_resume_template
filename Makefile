TEX = xelatex
SRC = resume_template.tex
OUT = $(SRC:.tex=.pdf)
REQS = profilePicture.png
EXTS = $(wildcard *.log) \
	   $(wildcard *.aux) \
	   $(wildcard *.out) \
	   $(wildcard *.pdf)

.PHONY: all clean rebuild
all: $(OUT)

$(OUT): $(SRC) $(REQS)
	$(TEX) $(<)

clean:
	@rm -rfv $(EXTS)

rebuild: clean all
