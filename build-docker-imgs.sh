#!/bin/bash
versionTag='1.0'
docker build -t mateusz_miszka_ecr_toxiclb:$versionTag  -f Dockerfile.openjdk .
docker build -t toxiclbtest -f Dockerfile.python2.7 .