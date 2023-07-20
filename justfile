build:
	typst --font-path ./rsrc/fonts/ c src/main.typ "Nicholas_Chiasson_Resume.pdf"

watch:
	typst --font-path ./rsrc/fonts/ w src/main.typ "Nicholas_Chiasson_Resume.pdf"
