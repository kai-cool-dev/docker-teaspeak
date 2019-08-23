#!/usr/bin/env bash
docker-compose down
git pull && \
docker build -t kai/teaspeak:latest . && \
docker-compose up
