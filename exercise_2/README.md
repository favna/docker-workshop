Exercise 2
---
Steps:

1. Create a simple java program (hello world).
2. Compile the java program using the command line.
3. Create a `Dockerfile` that uses the `openjdk` base image
4. Add the java program to the custom image using `ADD`
5. Create the `ENTRYPOINT` for the docker container, this entrypoint should be `java <<YOUR_JAVA_CLASS>>`.
6. 