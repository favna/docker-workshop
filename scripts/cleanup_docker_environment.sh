#!/usr/bin/env bash

echo "-----------------------------"
echo "cleaning all images and volumes"
docker system prune --all --force --volumes
echo "done."
echo "-----------------------------"
