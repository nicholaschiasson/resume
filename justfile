build:
	typst c --font-path ./rsrc/fonts/ src/main.typ "Nicholas_Chiasson_Resume.pdf"

watch:
	typst w --font-path ./rsrc/fonts/ src/main.typ "Nicholas_Chiasson_Resume.pdf"
