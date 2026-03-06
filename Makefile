XE = xelatex

all: compile clean-aux

compile:
	$(XE) --shell-escape TFG-TFM_EPS_UA.tex
	bibtex TFG-TFM_EPS_UA
	makeglossaries TFG-TFM_EPS_UA
	$(XE) --shell-escape TFG-TFM_EPS_UA.tex
	$(XE) --shell-escape TFG-TFM_EPS_UA.tex

clean-aux:
	rm -f *.acn *.aux *.auxlock *.bbl *.blg *.glo *.glsdefs *.ist *.lof *.log *.lot *.out *.toc *.xdv *.acr *.alg *.glg *.gls *.lol

clean: clean-aux
	rm -f TFG-TFM_EPS_UA.pdf