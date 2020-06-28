#!/bin/bash
PS_ID=$(docker ps -a | grep "db-jsonmutator" | awk '{print $1}')
if [ ! "$PS_ID" == "" ]; then
    echo "Killing container $PS_ID"
    docker kill db-jsonmutator &>/dev/null
    docker rm db-jsonmutator &>/dev/null
else
    echo "Container db-jsonmutator not found"
fi

IMAGE_ID=$(docker images | grep "db-jsonmutator" | awk '{print $3}')
if [ ! "$IMAGE_ID" == "" ]; then
    echo "Removing old image..."
    docker rmi -f $IMAGE_ID
else
    echo "Image not found"
fi

echo "Creating container..."

docker build . --tag lucasgomestech/db-jsonmutator:0.0.1
docker run -d --name=db-jsonmutator -p 0.0.0.0:5432:5432 lucasgomestech/db-jsonmutator:0.0.1

echo "Waiting for Postgres to start up..."

sleep 10

echo "Done!"
