@ECHO OFF
ECHO -------------------------------
ECHO cleaning all images and volumes
docker system prune --all --force --volumes
ECHO done.
ECHO -------------------------------