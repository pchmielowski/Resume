all: pdf

lang = pl
pdf: style_chmduquesne.tex resume-$(lang).md
	pandoc --standalone --template style_chmduquesne.tex \
	--from markdown --to context \
	-V papersize=A4 \
	-o resume-$(lang).tex resume-$(lang).md; \
	context resume-$(lang).tex


clean:
	rm -f resume-$(lang).tex
	rm -f *.tuc
	rm -f *.log
	rm -f *.pdf
