# Exercise 1 - Your First Docker Container

docker build -t <naam> .

## Java

Steps:

1. Create a simple java program (hello world).
2. Create a [`Dockerfile`](Dockerfile) that uses the `eclipse-temurin` base image.
3. Add the java program to the custom image using `ADD`.
4. Make sure the image compiles the java program before running it, using the `RUN` command.
5. Create the `ENTRYPOINT` for the docker container, this entrypoint should be `java <<YOUR_JAVA_CLASS>>`.
6. Build the custom image using the `docker build` command. Use the `-t` argument to give the image a name. Make sure to
   end with a `.` to indicate the current directory to tell Docker where the `Dockerfile` is located.
7. Run the custom image using the `docker run` command.
8. Use the command `docker image ls -a` to check out your currently made image.
9. Use the command `docker container ls` to check out your currently _running_ containers. What do(n't) you see, and
   why?
10. Use the command `docker container ls -a` to check out all your containers.
