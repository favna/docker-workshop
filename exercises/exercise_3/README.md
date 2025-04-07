# Exercise 3 - Load Balancing

Steps:

1. View the [app1](app1) directory. Run the container and see what it does.
   - When running this container make sure to add `--publish 4001:80` to the `docker run` command. For example
     `docker run --publish 4001:80 <your image name>`
2. Open the [`docker-compose.yml`] file, build services and run the container. It exposes the internal port 80 to
   port 4001.
3. Check [localhost](http://localhost:4001) to verify the app is working.
4. Stop the container.
5. Create a second app, app2. This app should have a different front page, or [index.html](app1/web/index.html).
6. Add this app to the [`docker-compose.yml`] file and expose app2 to port 1002
7. Verify that app2 is working by checking [localhost](http://localhost:1002).
8. Look at the [nginx.conf](load-balancer/nginx.conf) file and try to understand what the file does.
9. Finish the [Dockerfile](load-balancer/Dockerfile):
   1. Copy the [nginx.conf](load-balancer/nginx.conf) to the `/etc/nginx/nginx.conf` folder inside the container.
   2. Expose port 8080 to the outside world
10. Create a loadbalancer in the [`docker-compose.yml`] file. Expose the loadbalancer port to port 3000.
11. Run the load balancer and verify it works as expected. If it does then pressing F5 on localhost:3000 should show a
    different front page each time.

Example:
[https://towardsdatascience.com/sample-load-balancing-solution-with-docker-and-nginx-cf1ffc60e644](https://towardsdatascience.com/sample-load-balancing-solution-with-docker-and-nginx-cf1ffc60e644)

[`docker-compose.yml`]: ./docker-compose.yml
