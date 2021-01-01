#!/bin/bash

version="1.0.0"

# optional argument handling.(version)
if [[ "$1" == "-version" ]];then
    echo $version
    exit 0
fi

# optional argument handling.(help)
if [[ "$1" == "-help" ]];then
    echo "Remove all Docker containers,volumes,images and network."
    echo
    echo "Usage:"
    echo " docker-clean-all run"
    exit 0
fi

# optional argument handling.(run)
if [[ "$1" == "run" ]];then

  docker rm -f -v $(docker ps -aq)

  docker rmi -f  $(docker images -q)

  docker volume rm $(docker volume ls -q)

  docker network rm $(docker network ls -q)

  exit 0
fi

echo "The plugin named docker-remove-all"