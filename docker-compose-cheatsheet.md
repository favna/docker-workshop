# Docker Compose Cheatsheet

**For a full reference go to https://docs.docker.com/compose/reference/**

## ```up```

_Run containers_

**Ex:** ```docker compose up --detach```

- ```--detach``` -> Detached mode: Run containers in the background, print new container names

## ```down```

_Stop and remove containers, networks, images, and volumes_

**Ex:** ```docker compose down```

## ```ps```

_List containers_

**Ex:** ```docker compose ps```

## ```restart```

_Restart services_

**Ex:** ```docker compose restart```

## ```logs```

_View output from containers_

**Ex:** ```docker compose logs```

## ```exec```

_Run a command in a running container_

**Ex:** ```docker compose exec <service_name> /bin/bash```

- ```<service_name>``` -> Service name defined in ```docker compose.yml```
- ```/bin/bash``` -> Command to run, in this case a ```bash``` shell

## ```build```

_Build or rebuild services_

**Ex:** ```docker compose build```

## ```pull```

_Pull service images_

**Ex:** ```docker compose pull```

## ```push```

_Push service images_

**Ex:** ```docker compose push```

## ```start```

_Start services_

**Ex:** ```docker compose start```

## ```stop```

_Stop services_

**Ex:** ```docker compose stop```

## ```help```

_Get help on a command_

**Ex:** ```docker compose help```

- ```<command>``` -> Command to get help on

## ```port```

_Print the public port for a port binding_

**Ex:** ```docker compose port <service_name> <container_port>```

- ```<service_name>``` -> Service name defined in ```docker compose.yml```
- ```<container_port>``` -> Container port defined in ```docker compose.yml```

## ```scale```

_Set number of containers for a service_

**Ex:** ```docker compose scale <service_name>=<number_of_containers>```

- ```<service_name>``` -> Service name defined in ```docker compose.yml```
- ```<number_of_containers>``` -> Number of containers to scale

## ```kill```

_Kill containers_

**Ex:** ```docker compose kill <service_name>```

- ```<service_name>``` -> Service name defined in ```docker compose.yml```

## ```pause```

_Pause services_

**Ex:** ```docker compose pause <service_name>```

- ```<service_name>``` -> Service name defined in ```docker compose.yml```

## ```unpause```

_Unpause services_

**Ex:** ```docker compose unpause <service_name>```

- ```<service_name>``` -> Service name defined in ```docker compose.yml```
