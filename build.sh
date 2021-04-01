docker-compose build
docker create -ti --name server  assignment-1_dcs-system
docker create -ti --name client assignment-1_dcs-system


docker start client
docker start server

echo "run command: docker exec -ti server 'bin/bash'"
echo "run command: docker exec -ti client 'bin/bash'"
