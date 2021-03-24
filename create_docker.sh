#!/bin/bash

hora=$(date +"%Y-%m-%d-%H-%M-%S")

sbt dist

echo "Creando docker "
docker build -t my-app .

echo "Creado docker"
