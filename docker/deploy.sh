#!/usr/bin/env bash
####################################################

####################################################
## Change Working Directory To laradock
####################################################
cd /opt/api/docker

####################################################
## Run Docker Commands
####################################################
docker-compose -p api -f docker-compose-prod.yml build
docker-compose down
docker-compose -p api -f docker-compose-prod.yml up -d
