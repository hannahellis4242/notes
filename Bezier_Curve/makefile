all: main.tex
	pdflatex --shell-escape main.tex
	makeindex main.idx
	pdflatex --shell-escape main.tex
clean:
	rm main.aux main.idx main.lof main.log main.lot main.pdf main.pgf-plot.gnuplot main.pgf-plot.table main.toc main.ilg main.ind