docker-compose build
docker create -ti --name client  assignment-1_client
docker create -ti --name server assignment-1_server

docker start server
docker start client


echo "run command: docker exec -ti server 'bin/bash'"
echo "run command: docker exec -ti client 'bin/bash'"
