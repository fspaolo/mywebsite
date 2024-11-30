all:
	npm run build
	cp -rfv _site/* docs/
	cp -rfv assets/img/* docs/assets/img/

build:
	npm run build

copy:
	cp -rfv _site/* docs/

copy:
	cp -rfv assets/img/* docs/assets/img/

git:
	git add docs/* docs/assets/img/*
	git commit -am 'Update website'
	git push 

.PHONY: all build copy git
