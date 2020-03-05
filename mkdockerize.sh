#!/bin/bash

if [ "$3" = "serve" ]
then
   #Running the website
    docker run -d --rm -p 8000:8000 --name mkdocs-serve -v $1:/docs anilmahapatra/mkdocs:$2 $3
elif [ "$3" = "produce" ]
then
    #Producing the website
    docker run --rm --name mkdocs-produce -v $1:/docs anilmahapatra/mkdocs:$2 $3
else
    echo "This argument is invalid. Please provide [serve or produce]"
fi
