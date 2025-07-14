.PHONY: clean ncc_build

clean:
	find . -type d -name "node_modules" | xargs rm -rf

ncc_build:
	ncc build index.js -o action