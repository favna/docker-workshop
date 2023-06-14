#!/usr/bin/env bash

echo "-----------------------------"
echo "cleaning all images and volumes"
podman system prune --all --force --volumes
echo "done."
echo "-----------------------------"
