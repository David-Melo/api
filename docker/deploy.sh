#!/usr/bin/env bash
####################################################

####################################################
## Change Working Directory To laradock
####################################################
cd /opt/dekorausa/docker

####################################################
## Run Docker Commands
####################################################
docker-compose -p dekorausa -f docker-compose-prod.yml build
docker-compose down
docker-compose -p dekorausa -f docker-compose-prod.yml up -d
