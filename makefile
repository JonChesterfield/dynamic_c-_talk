pdf := dynamic_c++.pdf
all:	dynamic_c++.pdf

images := graphcore-web.png DragonCrop.png The_GIMP_icon.png EmacsIcon.png 

$(pdf):	$(images)

$(pdf):	dynamic_c++.tex
	latex --output-format=pdf -interaction=nonstopmode $^

ship:	$(pdf)
	cp dynamic_c++.tex ~/dynamic_cpp_talk/
	cp makefile ~/dynamic_cpp_talk/
	cp $(images) ~/dynamic_cpp_talk/
	cp $(pdf) ~/dynamic_cpp_talk/


clean:
	rm -f $(pdf)
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb
