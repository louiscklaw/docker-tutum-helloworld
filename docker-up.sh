#!/usr/bin/env sh

docker network create proxy

docker-compose kill && docker-compose down
docker-compose up --remove-orphans --force-recreate

docker-compose ps
