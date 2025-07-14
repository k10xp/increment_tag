.PHONY: clean ncc_build

clean:
	find . -type d -name "node_modules" | xargs rm -rf

ncc_build:
	npm i -g @vercel/ncc && \
	npm install && \
	ncc build index.js -o action && \
	chmod +x action/git_update.sh