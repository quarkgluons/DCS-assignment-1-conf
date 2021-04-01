### About
This repository creates two containers using the gcc image from dockerhub 

### Prerequisites
1. Install Docker
2. Install docker-compose


### Build
Run `bash ./build.sh` from the root directory of this project

This command will create the image and create the containers client and server.

To connect to the server run `docker exec -ti server '/bin/bash'`
To connect to the client run `docker exec -ti client '/bin/bash'`

The files for the client and the server would be in the `/home` folder of the containers.

You may find the ip addresses of the individual containers with the `ip route`.

You may find that you may be able to ping both the containers from their bash prompts. So I guess you may be good to start socket programming.

### Cleanup

To clean up any containers and repositories created, run `bash ./cleanup.sh`
