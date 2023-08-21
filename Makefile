# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help

help: ## Run `make build` and `sudo make install` to build and install the binaries.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build:  # Build the docker images
	docker build -t ghcr.io/ocean-perception/qgis:latest -f docker/qgis.Dockerfile .
	docker build -t ghcr.io/ocean-perception/cola2_lib:latest -f docker/cola2_lib.Dockerfile .
	docker build -t ghcr.io/ocean-perception/iquaview:latest -f docker/iquaview.Dockerfile .

install: build  # Install the binaries and launchers
	cp bin/iquaview /usr/local/bin
	cp bin/qgis /usr/local/bin
	cp launchers/iquaview.desktop /usr/share/applications
	cp launchers/qgis.desktop /usr/share/applications
	cp icons/iquaview.png /usr/share/icons
	cp icons/qgis.png /usr/share/icons

all: install  # Build and install the binaries and launchers

.DEFAULT_GOAL := help