IMG_NAME ?= jekyll-gh-pages
CONT_NAME ?= cnt-$(IMG_NAME)
DOCKERFILE ?= Dockerfile

build:
	docker build -t $(IMG_NAME) -f $(DOCKERFILE) .

run: build
	docker run -d --rm --name $(CONT_NAME) -v $(shell pwd)/..:/workdir -w /workdir $(IMG_NAME) /workdir/init-jekyll-site.sh

stop:
	-docker stop $(CONT_NAME)

clean: stop
	docker rm $(CONT_NAME)

.PHONY: build run stop clean
