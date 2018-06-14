# addok-ban-dept

A docker image for running an [addok](https://github.com/addok/addok)  instance with a departemental dataset of the [BAN](http://adresse.data.gouv.fr/). Only designed to rapidly deploy a geocoding instance for test purposes.

## Manual setup and run

Clone the repo, create an `addok-data` directory into in and download any *-json.bz2 from http://bano.openstreetmap.fr/BAN_odbl/ in it.

then

```
docker-compose build
docker-compose up -d
```
Loading the dataset might take a minute or more. Use `docker logs` to check the container status.

## Sample script for departement 31

A sample set up and run script is provided (`sample-run.sh`) to automate the setup and running of the image.

## CSV geocoding

Sample request for geocoding data. More information [here](https://github.com/addok/addok-csv)

```
http --timeout 600 -f POST http://localhost:7878/search/csv/ columns='nom_rue' citycode='code_insee_commune' data@togeocode.csv
```
