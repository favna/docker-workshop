Exercise 1 - First Docker Container
---
Steps:

1. Create a simple java program (hello world).
3. Create a [`Dockerfile`](Dockerfile) that uses the `openjdk` base image
4. Add the java program to the custom image using `ADD`
4. Make sure the image compiles the java program before running it, using the `RUN` command.
5. Create the `ENTRYPOINT` for the docker container, this entrypoint should be `java <<YOUR_JAVA_CLASS>>`.
6. Build the custom image using the `docker build` command (use the `-t` argument to give the image a name).
7. Run the custom image using the `docker run` command.
