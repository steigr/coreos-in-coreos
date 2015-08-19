#!/bin/sh

if [[ "$(id -u)" != "0" ]]; then
	sudo $0
	exit $?
fi

cp .dockerignore /.dockerignore
cp Dockerfile /Dockerfile
docker build -t coreos /
rm /Dockerfile /.dockerignore