#!/bin/bash
docker build -t ghcr.io/ocean-perception/qgis:latest -f qgis.Dockerfile .
docker build -t ghcr.io/ocean-perception/cola2_lib:latest -f cola2_lib.Dockerfile .
docker build -t ghcr.io/ocean-perception/iquaview:latest .
