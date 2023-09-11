# Podman CLI Commands Cheatsheet

**For a full reference go to https://docs.podman.io/en/latest/Commands.html (alternatively the Docker documentation: https://docs.docker.com/engine/reference/commandline/cli/)**

## ```pull```

_Download an image from a registry_

**Ex:** ```podman pull <image_name>```

## ```build```

_Build an image from a Dockerfile_

**Ex:** ```podman build -t <image_name> .```

## ```rmi```

_Remove one or more images_

**Ex:** ```podman rmi <image_name>```

## ```run```

_Run a command in a new container_

**Ex:**
```podman run --interactive --tty --rm --name <container_name> --publish <host_port>:<container_port> <image_name>```

- ```--interactive``` -> Keep STDIN open even if not attached
- ```--tty``` -> Allocate a pseudo-TTY
- ```--name``` -> Assign a name to the container
- ```--publish``` -> Publish a container's port(s) to the host
- ```--rm``` -> Automatically remove the container when it exits

## ```exec```

_Run a command in a running container_

**Ex:** ```podman exec -it <container_name> /bin/bash```

## ```stop```

_Stop one or more running containers_

**Ex:** ```podman stop <container_name>```

## ```start```

_Start one or more stopped containers_

**Ex:** ```podman start <container_name>```

## ```rm```

_Remove one or more containers_

**Ex:** ```podman rm <container_name>```

## ```ps```

_List containers_

**Ex:** ```podman ps```

## ```images```

_List images_

**Ex:** ```podman images```

## ```logs```

_Fetch the logs of a container_

**Ex:** ```podman logs <container_name>```

## ```help```

_Get help on a command_

**Ex:** ```podman help```

## ```attach```

_Attach local standard input, output, and error streams to a running container_

**Ex:** ```podman attach <container_name>```

## ```ps```

_List containers_

**Ex:** ```podman ps```

**Ex:** ```podman ps --all```

- ```--all``` -> List all containers, including stopped ones

## ```container```

_Manage containers_

**Ex:** ```podman container ls```

- Alias for ```podman ps```

**Ex:** ```podman container rm```

- Alias for ```podman rm```

## ```kill```

_Kill one or more running containers_

**Ex:** ```podman kill <container_name>```
