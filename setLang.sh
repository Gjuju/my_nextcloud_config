#!/bin/bash

sudo docker exec --user www-data nextcloud-aio-nextcloud php occ config:system:set default_phone_region --value="FR"
