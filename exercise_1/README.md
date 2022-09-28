# Exercise 1 - Your First Docker Container

## Java

Steps:

1. Create a simple java program (hello world).
2. Create a [`Dockerfile`](Dockerfile) that uses the `openjdk` base image.
3. Add the java program to the custom image using `ADD`.
4. Make sure the image compiles the java program before running it, using the `RUN` command.
5. Create the `ENTRYPOINT` for the docker container, this entrypoint should be `java <<YOUR_JAVA_CLASS>>`.
6. Build the custom image using the `docker build` command (use the `-t` argument to give the image a name).
7. Run the custom image using the `docker run` command.
8. Use the command `docker image ls -a` to check out your currently made image.
9. Use the command `docker container ls` to check out your currently _running_ containers. What do(n't) you see, and
   why?
10. Use the command `docker container ls -a` to check out all your containers.

---

## C#

1. Create a simple C# program (hello world). (you can use `dotnet new console -o app -n myapp` to create a simple hello
   world application.)
2. Create a [`Dockerfile`](Dockerfile) that uses the `mcr.microsoft.com/dotnet/runtime:6.0` base image.
3. Publish the app using `dotnet publish -c Release`.
4. Add the program to the custom image using `COPY`. Copy the `app/bin/Release/net6.0/publish/` directory to the `app/`
   directory inside the image.
5. Create the `ENTRYPOINT` for the docker container, this entrypoint should be `dotnet <<app/<<YOUR_APP>>.dll`.
6. Build the custom image using the `docker build` command (use the `-t` argument to give the image a name).
7. Run the custom image using the `docker run` command.
8. Use the command `docker image ls -a` to check out your currently made image.
9. Use the command `docker container ls` to check out your currently _running_ containers. What do(n't) you see, and
   why?
10. Use the command `docker container ls -a` to check out all your containers.
