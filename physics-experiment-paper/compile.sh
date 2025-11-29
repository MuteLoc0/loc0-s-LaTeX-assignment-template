xelatex -interaction=nonstopmode main
bibtex main
xelatex -interaction=nonstopmode main
xelatex -synctex=1 main