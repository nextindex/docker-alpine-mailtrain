[![Docker Stars](https://img.shields.io/docker/stars/nextindex/alpine-mailtrain.svg?style=flat-square)](https://hub.docker.com/r/nextindex/alpine-mailtrain/)
[![Docker Pulls](https://img.shields.io/docker/pulls/nextindex/alpine-mailtrain.svg?style=flat-square)](https://hub.docker.com/r/nextindex/alpine-mailtrain/)


# Alpine Mailtrain

This image is based on [evild/alpine-nodejs](https://hub.docker.com/r/evild/alpine-nodejs/)

## Version

- `latest` [(Dockerfile)](https://github.com/nextindex/docker-alpine-mailtrain/blob/master/Dockerfile)
- `1.24.0` [(Dockerfile)](https://github.com/nextindex/docker-alpine-mailtrain/blob/master/Dockerfile)

## What is Mailtrain?

Mailtrain is a self hosted newsletter application built on Node.js (v5+) and MySQL (v5.5+ or MariaDB).

## Installation
Automated builds of the image are available on Dockerhub and is the recommended method of installation.
```
docker pull nextindex/alpine-mailtrain:1.24.0
```
You can also pull the latest tag which is built from the repository HEAD.
```
docker pull nextindex/alpine-mailtrain:latest
```

## How to use this image
You can check my [docker-compose](https://github.com/nextindex/docker-alpine-mailtrain/blob/master/docker-compose.yml).

To start your stack :
```
docker-compose up -d
```

Authenticate as ```admin```:```test```
