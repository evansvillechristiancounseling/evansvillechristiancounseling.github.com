PWD=$(shell pwd)
PORT=4567
DOCKER_IMAGE=gus/ecc
DOCKER_WORKDIR=/app

DOCKER=docker
DOCKER_BUILD=$(DOCKER) build
DOCKER_RUN_NAME=gus-ecc
DOCKER_UID_GID=$(shell id -u):$(shell id -g)
DOCKER_RUN=$(DOCKER) run --rm -v $(PWD):$(DOCKER_WORKDIR) -p $(PORT):$(PORT) --user $(DOCKER_UID_GID)

.PHONY: setup build serve stop

setup:
	$(DOCKER_BUILD) -t $(DOCKER_IMAGE) .

build:
	$(DOCKER_RUN) $(DOCKER_IMAGE) jekyll build

serve:
	$(DOCKER_RUN) --name $(DOCKER_RUN_NAME) $(DOCKER_IMAGE)

stop:
	$(DOCKER) stop $(DOCKER_RUN_NAME)