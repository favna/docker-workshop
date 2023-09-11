# Exercise 2 - Your First Podman Container

## Java

Steps:

1. Create a simple java program (hello world).
2. Create a [`Dockerfile`](Dockerfile) that uses the `openjdk` base image.
3. Add the java program to the custom image using `ADD`.
4. Make sure the image compiles the java program before running it, using the `RUN` command.
5. Create the `ENTRYPOINT` for the podman container, this entrypoint should be `java <<YOUR_JAVA_CLASS>>`.
6. Build the custom image using the `podman build` command (use the `-t` argument to give the image a name).
7. Run the custom image using the `podman run` command.
8. Use the command `podman image ls -a` to check out your currently made image.
9. Use the command `podman container ls` to check out your currently _running_ containers. What do(n't) you see, and
   why?
10. Use the command `podman container ls -a` to check out all your containers.
