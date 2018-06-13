#!/bin/bash

cd /data

filename="$(ls | sort -n | head -1)"
bzip2 -dk $filename
filename="$(ls | sort -n | head -1)"

addok batch $filename
redis-cli -h redis set import_date "$( date )"
redis-cli -h redis set address_source "$filename"

rm $filename

gunicorn addok.http.wsgi -b 0.0.0.0:7878
