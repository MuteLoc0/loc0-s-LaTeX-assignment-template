xelatex -interaction=nonstopmode main
biber main
xelatex -interaction=nonstopmode main
xelatex -synctex=1 main