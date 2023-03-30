# Exercise 3

## Exercise 3a - Docker-Compose

Steps:

1. Add code to your java class so it will run indefinitely (using a loop for example), name it
   HelloWorldContinuous.java.
2. Check the [`Dockerfile`](Dockerfile) to verify its correctness.
3. Run the container to check if its functionality is what you expect of it.
4. Open a second terminal and verify that you see the container running.
5. Create a [`docker-compose.yml`](docker-compose.yml) file.
6. Create a service in the docker-compose file, use the documentation from
   [here](https://docs.docker.com/compose/compose-file/compose-file-v3/). We need to add the following items to the
   [`docker-compose`](docker-compose.yml):
   - service name (e.g. my-first-service)
   - a build context (the directory which contains files/directories that have to be transferred inside the container,
     and where the (if present) [`Dockerfile`](Dockerfile) is located.)
   - dockerfile location (where is the Dockerfile located?)
   - image name and tag (my-first-image:v1)
7. When your [`docker-compose.yml`](docker-compose.yml) is finished, run the following command:
   `docker-compose -f docker-compose.yml up`.

## Exercise 3b - Creating multiple instances

Steps:

1. Use the [`docker-compose.yml`](docker-compose.yml) from the previous exercise to create a second service
   (my-second-service), using the same base image.
2. Find out in the [documentation](https://docs.docker.com/compose/compose-file/compose-file-v3/) how you could do this
   in a different way (hint: replicas).
