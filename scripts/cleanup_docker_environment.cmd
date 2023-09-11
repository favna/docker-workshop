@ECHO OFF
ECHO -------------------------------
ECHO cleaning all images and volumes
podman system prune --all --force --volumes
ECHO done.
ECHO -------------------------------
