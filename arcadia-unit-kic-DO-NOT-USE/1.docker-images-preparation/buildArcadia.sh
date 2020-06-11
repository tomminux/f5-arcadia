#!/bin/bash

for dir in {main,bakend} 
do 
    cd ~/f5-arcadia/arcadia-unit-kic/1.docker-images-preparation/$dir
    docker build . -t "registry.f5-udf.com:5000/arcadia-${dir}:unit"
    docker push "registry.f5-udf.com:5000/arcadia-${dir}:unit"
done