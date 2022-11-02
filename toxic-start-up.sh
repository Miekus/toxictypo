#!/bin/bash
docker pull 644435390668.dkr.ecr.eu-central-1.amazonaws.com/mateusz_miszka_ecr_toxiclb:1.0
if [ ! "$(docker ps -q -f name=toxiclb)" ]; then
    docker run -d -p 8080:8080 --name=toxiclb 644435390668.dkr.ecr.eu-central-1.amazonaws.com/mateusz_miszka_ecr_toxiclb:1.0
else
    docker stop toxiclb
    docker rm toxiclb 
    docker run -d -p 8080:8080 --name=toxiclb 644435390668.dkr.ecr.eu-central-1.amazonaws.com/mateusz_miszka_ecr_toxiclb:1.0
fi



