IMG_NAME ?= jekyll-gh-pages-site
CONT_NAME ?= cnt-$(IMG_NAME)
DOCKERFILE ?= Dockerfile

build:
	-test -z $(shell docker images -q jekyll-gh-pages) && test -d setup && cd setup && make build
	docker build -t $(IMG_NAME) -f $(DOCKERFILE) .

run:
	docker run -d --rm --name $(CONT_NAME) -v $(shell pwd):/workdir -w /workdir -p 4000:4000 $(IMG_NAME) bundle exec jekyll serve --host 0.0.0.0

stop:
	-docker stop $(CONT_NAME)

clean: stop
	docker rm $(CONT_NAME)

.PHONY: build run stop clean
