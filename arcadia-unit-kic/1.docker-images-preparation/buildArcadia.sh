#!/bin/bash

for Adir in {main,bakend,app3,app3} 
do 
    cd ~/f5-arcadia/arcadia-unit-kic/1.docker-images-preparation/$dir
    docker build . -t "registry.f5-udf.com:5000/arcadia-${dir}:unit"
    docker push "registry.f5-udf.com:5000/arcadia-${dir}:unit"
done
