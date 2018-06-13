#!/bin/bash

if [ ! -d "addok-data" ]; then
	mkdir addok-data
else
	rm -rf addok-data
fi

wget "http://bano.openstreetmap.fr/BAN_odbl/BAN_odbl_31-json.bz2" -P ./addok-data

docker-compose build
docker-compose up -d
