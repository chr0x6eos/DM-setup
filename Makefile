SHELL := /bin/bash

.PHONY: image run clean
.DEFAULT: all

compose:
	docker-compose up --build -d

clean:
	docker rmi $(docker images -f "dangling=true" -q)

run:
	docker-compose run --rm -it ubuntu bash

all: compose run
