# Supported tags and respective `Dockerfile` links

- [`3.2.1`(*3.0/Dockerfile*)](https://github.com/johnt1000/docker-vue-cli/blob/3.0/Dockerfile)

# About

This container will have the items necessary to run the vue-cli.

# How to use this image

## Create a `Dockerfile` in your project

```dockerfile
# Dockerfile
FROM jonatasra/vue-cli
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 8080
```

Then, run the commands to build and run the Docker image:

```console
$ docker build -t my-vue-app .
$ docker run -it --rm --name my-running-app my-vue-app sh
```

## Create a `docker-compose` in your project

```dockerfile
# docker-compose.yaml
version: '3'
services:
  vue:
    image: jonatasra/vue-cli
    command: npm run dev
    volumes:
      - .:/app
    ports:
      - 8080:8080
```

# Image Variants
The react-cli images come in many flavors, each designed for a specific use case.

## `jonatasra/vue-cli:<version>`

This is the defacto image. If you are unsure about what your needs are, you probably want to use
this one. It is designed to be used both as a throw away container (mount your source code and start
the container to start your app), as well as the base to build other images off of.

# License
View [license information](https://github.com/johnt1000/docker-vue-cli/blob/master/LICENSE) for the software contained in this image.