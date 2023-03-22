# Docker CLI Commands Cheatsheet

**For a full reference go to https://docs.docker.com/engine/reference/commandline/cli/**

## ```pull```

_Download an image from a registry_

**Ex:** ```docker pull <image_name>```

## ```build```

_Build an image from a Dockerfile_

**Ex:** ```docker build -t <image_name> .```

## ```rmi```

_Remove one or more images_

**Ex:** ```docker rmi <image_name>```

## ```run```

_Run a command in a new container_

**Ex:**
```docker run --interactive --tty --rm --name <container_name> --publish <host_port>:<container_port> <image_name>```

- ```--interactive``` -> Keep STDIN open even if not attached
- ```--tty``` -> Allocate a pseudo-TTY
- ```--name``` -> Assign a name to the container
- ```--publish``` -> Publish a container's port(s) to the host
- ```--rm``` -> Automatically remove the container when it exits

## ```exec```

_Run a command in a running container_

**Ex:** ```docker exec -it <container_name> /bin/bash```

## ```stop```

_Stop one or more running containers_

**Ex:** ```docker stop <container_name>```

## ```start```

_Start one or more stopped containers_

**Ex:** ```docker start <container_name>```

## ```rm```

_Remove one or more containers_

**Ex:** ```docker rm <container_name>```

## ```ps```

_List containers_

**Ex:** ```docker ps```

## ```images```

_List images_

**Ex:** ```docker images```

## ```logs```

_Fetch the logs of a container_

**Ex:** ```docker logs <container_name>```

## ```help```

_Get help on a command_

**Ex:** ```docker help```

## ```attach```

_Attach local standard input, output, and error streams to a running container_

**Ex:** ```docker attach <container_name>```

## ```ps```

_List containers_

**Ex:** ```docker ps```

**Ex:** ```docker ps --all```

- ```--all``` -> List all containers, including stopped ones

## ```container```

_Manage containers_

**Ex:** ```docker container ls```

- Alias for ```docker ps```

**Ex:** ```docker container rm```

- Alias for ```docker rm```

## ```kill```

_Kill one or more running containers_

**Ex:** ```docker kill <container_name>```
