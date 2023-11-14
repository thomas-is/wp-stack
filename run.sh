#!/bin/bash

base=$( realpath $( dirname $0 ) )

mkdir -p $base/volumes/mysql
mkdir -p $base/volumes/html

docker network create --attachable -d overlay wp
docker stack deploy -c wp.yml wp
