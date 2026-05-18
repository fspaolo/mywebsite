preview:
	cd docs && python3 -m http.server 8080

deploy:
	git add docs/ CLAUDE.md AGENTS.md Makefile
	git commit -m 'Update website'
	git push

.PHONY: preview deploy
