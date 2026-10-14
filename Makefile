cg.pdf: *.typ images/*.pdf
	# Linux
	typst compile cg.typ
	# Windows
	# typst compile --font-path D:\context-win64\fonts\ --no-pdf-tags .\cg.typ

clean: cg.pdf cg_final.pdf
	rm cg.pdf cg_final.pdf
