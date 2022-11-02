#!/bin/bash
#example usage ./docker-create-image.sh 1.1 
versionTag='1.0'

aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 644435390668.dkr.ecr.eu-central-1.amazonaws.com
docker tag mateusz_miszka_ecr_toxiclb:$versionTag 644435390668.dkr.ecr.eu-central-1.amazonaws.com/mateusz_miszka_ecr_toxiclb:$versionTag
docker push 644435390668.dkr.ecr.eu-central-1.amazonaws.com/mateusz_miszka_ecr_toxiclb:$versionTag 
