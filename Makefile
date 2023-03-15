
.PHONY: all clean

all: dist/main.js dist/index.html

clean:
	rm -rf dist elm-stuff

dist:
	mkdir -p $@

dist/main.js: src/Main.elm dist
	elm make --optimize --output=$@ $<

dist/index.html: html/index.html dist
	cp $< $@