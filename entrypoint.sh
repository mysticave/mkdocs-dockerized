#!/bin/bash

if [ "$1" = "serve" ]
then
    tar -pxvzf project.tar.gz
    mkdocs serve --dev-addr=0.0.0.0:8000
elif [ "$1" = "produce" ]
then
    tar -pcvzf project.tar.gz
    tar -pOxvzf project.tar.gz
else
    echo "This argument is invalid. Please provide [serve or produce]"
fi
