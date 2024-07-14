#!/bin/bash

sudo docker stop nextcloud-aio-mastercontainer

sudo docker stop nextcloud-aio-domaincheck

sudo docker ps --format {{.Names}}

sudo docker ps --filter "status=exited"

sudo docker container prune

sudo docker network rm nextcloud-aio

sudo docker volume ls --filter "dangling=true"

sudo docker volume prune --filter all=1

sudo docker volume ls --format {{.Name}}




