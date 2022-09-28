# Exercise 4 - Connecting a Web Application with a Database

## Introduction

There is a web application located inside the target folder, [web-app-0.0.1.jar](target/web-app-0.0.1.jar).

The application has the following properties:

- It is a simple spring-boot web application. This application can save/show/delete `books`.
- It needs a database to store these `book` entities.
  - This database is provided using an environment variable: `SPRING_DATASOURCE_URL`, which is the connection string of
    the database.
- It has an API with two endpoints:
  - `/book` --> shows all books that the application currently has.
  - `/book/delete` --> deletes all books that the application currently has.

We are going to create a docker-compose file that sets up a network between the web-app and a postgres database.

## Step 1: Creating a database container

First we are going to run the postgres database service. The postgres database image is available at the Docker Hub, so
we are going to make use of this one.

1. Start a new postgres Docker container using the `postgres` service in the [docker-compose.yml](docker-compose.yml)
   file. Make sure to _only_ start the `postgres` service, _not_ the `web-app` service.
2. The outside port of the postgres container that you just started is `25432`.
3. The credentials for the postgres container are:
   - Username: dbuser
   - Password: db123
   - Standard database: bookdb

## Step 2: Create the service for the web-app

1. Create a [Dockerfile](Dockerfile):
   1. use the base image `openjdk:8-jdk`
   2. add the web app to the container
   3. create an entrypoint, with the command: `java -jar app.jar`
2. Create a service named `web-app`:
   1. name the image `web-app`.
   2. Create the build context by referencing the Dockerfile you've just created
   3. Use the container-name `java-web-app`.
   4. Expose port 9006 (the default postgres port) to the outside port 8090. (we can connect to the application using
      this outside port).

## Step 3: Using a network

We are going to use a network. to this network. When two services are part of a single network, we can connect them in a
very easy manner.

We have added a 'bridge' type network to our docker-compose file. From the Docker documentation:

_In terms of Docker, a bridge network uses a software bridge which allows containers connected to the same bridge
network to communicate, while providing isolation from containers which are not connected to that bridge network._

So if we add containers to this network, they are allowed to communicate with each other, while still being isolated
from the outside world.

If a network is defined in the compose file it is automatically started when you first start a service in that compose
file, you may have already noticed this when you started the postgres container.

## Step 4: Adding the database connection

1. Add the following `environment` variable to the `web-app` service:
   - SPRING_DATASOURCE_URL=jdbc:postgresql://book-postgres:5432/bookdb

Why does the SPRING_DATASOURCE_URL look like this?

- The `jdbc:postgresql://` part is there to show that we have a connection with a Postgres database (jdbc driver). If we
  would connect to a SQLServer database, this part would look like this: `jdbc:sqlserver://`
- The `book-postgres:5432` part is very important. This is the address of the database. We can use the INSIDE port 5432
  here because the `postgres` and `web-app` server are allowed to communicate with each other. Same as that we can use
  `book-postgres` as the address. Because the two services are part of the same network, we can just use the
  `container_name` of the postgres container to establish a connection, within the network. If the database is not part
  of the network, we would have used a differenct url, using `localhost` and the outside port 25432

## Step 5: Add the containers to the network

1. Define the network for both the services using:

   ```yaml
   services:
      postgres:
         image: postgres:latest
         container_name: book-postgres
         ports:
            - '25432':'5432'
         # ...

   # Adding the network here:
   networks:
      - web-app-net
   ```

## Step 6: Run and verify the application works

1. Run the docker-compose file and verify that the application runs at [localhost:8090/book](localhost:8090/book)
1. Delete the books using the `/book/delete` endpoint.

## Step 7: Download a DB Visualiser tool and insert new books into the database

1. Download [DBVisualiser](https://www.dbvis.com/), or an other DB tool.
1. Create a connection as the following:

![Database Connection](img/DBConnection.png)

1. Locate the book table:

![Table](img/DBtable.png)

1. Open a 'script table' and insert new books into the db, e.g.: `insert into book values(1, 'Lord of the Rings');`
1. Verify that the application can read the new books you've just added by navigating to
   [localhost:8090/book](localhost:8090/book).

Congratulations, you have succesfully connected your web-app with a postgres database using docker!
