export OUTPUT_NAME := "Nicholas_Chiasson_Resume.pdf"

build:
	typst c --font-path ./rsrc/fonts/ src/main.typ "$OUTPUT_NAME"

clean:
	rm -f "$OUTPUT_NAME"

watch:
	typst w --font-path ./rsrc/fonts/ src/main.typ "$OUTPUT_NAME"
