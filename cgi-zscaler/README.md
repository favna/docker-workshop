# About

Developer notes: This is a base image for loading zscaler into a docker image to be used for other docker images. This
image is not meant to be run on its own. It is meant to be used as a base image for other docker images. You can load it
into another Docker image with the following Dockerfile lines:

```dockerfile
COPY --from=cgi-zscaler:latest /ca-certs/ZscalerRootCertificate-2048-SHA256.crt /ca-certs/ZscalerRootCertificate-2048-SHA256.crt
RUN bash -c 'cp /ca-certs/ZscalerRootCertificate-2048-SHA256.crt $(openssl version -d | cut -f2 -d \")/certs && update-ca-certificates'
```

First build the docker image with `docker compose build` in this directory, then it will be used when building any other
image that uses the above lines.
